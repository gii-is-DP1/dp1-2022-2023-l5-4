<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="dobble" tagdir="/WEB-INF/tags" %>


<style>
    * {
        margin: 0;
        padding: 0;
        
    }

    .gamecomment {
        margin: 5px auto 5px auto;
        display: grid;
        height: 100%;
        aspect-ratio: 1;
        grid-template-columns: minmax(0, 3fr) minmax(0, 4fr) minmax(0, 3fr);
        grid-template-rows: repeat(2, minmax(0, 2fr)) minmax(0, 6fr) repeat(2, minmax(0, 3fr));
    }

    .player-wrapper {
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-direction: column;
        padding: 10px;
        margin: 10px;
    }

    #player-wrapper-top {
        grid-row: 1 / 3;
        grid-column: 2;
    }

    #player-wrapper-left {
        grid-row: 2 / 5;
        grid-column: 1;
    }

    #player-wrapper-right {
        grid-row: 2 / 5;
        grid-column: 3;
    }

    #player-wrapper-bottom {
        grid-row: 4 / 6;
        grid-column: 2;
    }

    .player,
    .central-deck {
        padding: 5px;
        background-color: white;
        position: relative;
        display: block;
        aspect-ratio: 1;
        border: 5px solid lightgray;
        border-radius: 20px;
    }
    .player-top, #main-player {
        height: 100%;
    }
    .player-left, .player-right {
        width: 100%;
    }

    .central-deck{
        height: 100%;
    }
    #main-player {
        border-color: gold;
    }

    #central-deck-wrapper {
        grid-row: 3 / 4;
        grid-column: 2;

    }

    .central-deck {
        border: none;
    }

    img {
        border-radius: 100%;
        width: 100%;
        height: 100%;
    }

    .timer {
        color: gray;
        position: fixed;
        right: 50px;
        top: 10px;
        font-size: 50px;

    }

    .scorecomment {
        position: fixed;
        display: flex;
        flex: 1;
        margin: 20px;
        min-width: 250px;
        height: 100%;
        max-height: 400px;
        border: 5px solid lightgray;
        border-radius: 20px;
    }

    .game {
        display: flex;
        flex: 1;
        height: 100%;
        flex-direction: row;
    }

    .card {
        display: block;
        position: relative;
        height: 100%;
        width: 100%;
    }
    .player-name{
        color: rgba(128, 128, 128, 0.5);
        position: absolute;
        bottom:0;
        font-size: 18px;
        font-weight: bolder;
        font-family: cartoon-toy;
    }

    .player-name:hover{
        color:gray;
    }
</style>

<dobble:htmlHeader/>
<div class="game">
    <span class="timer">15:32</span>
    <div class="scorecomment">
        <p>Scorecomment:</p>
    </div>
    <div class="gamecomment">
        <div id="player-wrapper-top" class="player-wrapper top">
            <div class="player player-top">
                <c:if test="${players[4]!=null}">
                    <dobble:card className="card" value="${players[4]}"/>
                    <p class="player-name">
                        <c:out value="${players[4].username}"/>
                    </p>
                </c:if>
            </div>
        </div>
        <div id="player-wrapper-left" class="player-wrapper">
            <div class="player player-left">
                <c:if test="${players[0]!=null}">
                    <dobble:card className="card" value="${players[0]}"/>
                    <p class="player-name">
                        <c:out value="${players[0].username}"/>
                    </p>
                </c:if>
            </div>
            <div class="player player-left">
                <c:if test="${players[2]!=null}">
                    <dobble:card className="card" value="${players[2]}"/>
                    <p class="player-name">
                        <c:out value="${players[2].username}"/>
                    </p>
                </c:if>
            </div>
        </div>
        <div id="player-wrapper-right" class="player-wrapper">
            <div class="player player-right">
                <c:if test="${players[1]!=null}">
                    <dobble:card className="card" value="${players[1]}"/>
                    <p class="player-name">
                        <c:out value="${players[1].username}"/>
                    </p>
                </c:if>
            </div>
            <div class="player player-right">
                <c:if test="${players[3]!=null}">
                    <dobble:card className="card" value="${players[3]}"/>
                    <p class="player-name">
                        <c:out value="${players[3].username}"/>
                    </p>
                </c:if>
            </div>
        </div>
        <div class="player-wrapper" id="central-deck-wrapper">
            <div class="player central-deck">
                    <dobble:card className="card" value="${game}" centralDeck="true"/>
            </div>
        </div>
        <div id="player-wrapper-bottom" class="player-wrapper">
            <div id="main-player" class="player">
                <c:if test="${mainPlayer!=null}">
                    <dobble:card className="card" value="${mainPlayer}"/>
                    <p class="player-name">
                        <c:out value="${mainPlayer.username}"/>
                    </p>
                </c:if> 
                
            </div>

        </div>
    </div>
</div>

<script>
    


</script>