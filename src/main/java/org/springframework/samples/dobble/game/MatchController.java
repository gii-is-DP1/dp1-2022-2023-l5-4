package org.springframework.samples.dobble.game;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.samples.dobble.symbol.Symbol;
import org.springframework.samples.dobble.user.User;
import org.springframework.samples.dobble.user.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/games/{gameId}/play")
public class MatchController {

    
    private static final String VIEW_PLAY_GAME = "games/playGame";

    // Constructor
    private GameService gameService;
    private UserService userService;
    private GameUserService gameUserService;

    @Autowired
    public MatchController(GameService gameService, UserService userService, GameUserService gameUserService) {
        this.gameService = gameService;
        this.userService = userService;
        this.gameUserService = gameUserService;
    }

    @GetMapping
    public ModelAndView playGame(@PathVariable("gameId") Long gameId, HttpServletResponse response, HttpServletRequest request) {
        
        // response.addHeader("Refresh", "1");
        
        Game game = this.gameService.findGame(gameId);
    
        if (!game.hasStarted()) return new ModelAndView("redirect:/games?error=TheGameHasNotStartedYet");
        if (game.isFinished()) return new ModelAndView("redirect:/games/{gameId}");

        if (!GameUser.userListOf(game.getGameUsers()).contains(userService.getLoggedUser())) return new ModelAndView("redirect:/games?error=noAuth");
        
        
        response.setHeader("Last-Modified",game.getUpdatedAt().toString());
        response.setHeader("Expires", ZonedDateTime.now().plusDays(1).withZoneSameInstant(ZoneOffset.UTC).format(DateTimeFormatter.RFC_1123_DATE_TIME));
        try {
            LocalDateTime lastUpdated = LocalDateTime.parse(request.getHeader("If-Modified-Since"));
          
            if (!game.getUpdatedAt().isAfter(lastUpdated)) {
                response.setStatus(304);
                return null;       
                } 
        } catch (NullPointerException e) {
  
        }
        
        ModelAndView mav = new ModelAndView(VIEW_PLAY_GAME);
        List<GameUser> players = game.getGameUsers();
        GameUser mainPlayer = players.stream()
            .filter(gameUser->gameUser.getUser() == userService.getLoggedUser())
            .findFirst()
            .get();
        players.remove(mainPlayer);

        Long seconds = ChronoUnit.SECONDS.between(game.getStartedAt(),LocalDateTime.now());
        List<Long> timer = List.of(seconds/60, seconds%60);
        mav.addObject("updatedAt", LocalDate.now());
        mav.addObject("mainPlayer", mainPlayer);
        mav.addObject("players", players);
        mav.addObject("game", game);
        mav.addObject("timer", timer);
        return mav;

    }

    @GetMapping("/checkForUpdate")
    @ResponseBody
    public String checkForUpdate(@PathVariable("gameId") Long gameId, @RequestParam("lastUpdatedAt") String lastUpdatedAtString){
        
        Game game = this.gameService.findGame(gameId);
        try {
            LocalDateTime lastUpdatedAt = LocalDateTime.parse(lastUpdatedAtString);
            if (!game.getUpdatedAt().isAfter(lastUpdatedAt)) return "";       
        } catch (NullPointerException e) {
            return e.getMessage();
        }
        return "reload";
    }

    @PostMapping("/match")
    public String checkMatch(@PathVariable("gameId") Long gameId, @ModelAttribute("symbol") Symbol symbol,  @ModelAttribute("user") User user) {
        if (user.getUsername() == null) return "redirect:/games/{gameId}/play";
        Game game = gameService.findGame(gameId);
        GameUser gameUser = gameUserService.findById(GameUserPk.of(user, game));

        Boolean symbolMatches = game.getCurrentCard().matches(symbol);
        Boolean userMatches;

        switch (game.getGamemode()) {
            case THE_POISONED_GIFT:
                userMatches = !user.equals(userService.getLoggedUser());
                break;  
            default:
                userMatches = user.equals(userService.getLoggedUser());
                break;  
        }
        
    
        if (symbolMatches && userMatches) gameUserService.makePlay(game, gameUser);
        
        if (game.getCards().size() == 0 || gameUser.getCards().size()==0) {
            gameService.endGame(game);
            game.getGameUsers().stream()
            .map(GameUser::getUser)
            .forEach(player->userService.setCurrentGame(player,null));
            return "redirect:/games/{gameId}";
        }

        return "redirect:/games/{gameId}/play";
    }
    
}
