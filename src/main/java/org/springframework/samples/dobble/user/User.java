package org.springframework.samples.dobble.user;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.samples.dobble.game.Game;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "users")
public class User{
	@Id
	String username;
	
	String password;
	
	boolean enabled;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
	private Set<Authorities> authorities;

	
    @ManyToMany
	@JoinTable(
        name = "usergames",
        joinColumns = @JoinColumn(name = "userId", nullable = false, table = "users"),
        inverseJoinColumns = @JoinColumn(name = "gameId", nullable = false, table = "games")
    )
	private List<Game> games;
	
	@OneToMany(mappedBy = "owner")
	private List<Game> ownedGames;

	@OneToMany(mappedBy = "winner")
	private List<Game> wonGames;

}