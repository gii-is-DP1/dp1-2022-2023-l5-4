package org.springframework.samples.dobble.game;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.samples.dobble.card.Card;
import org.springframework.samples.dobble.model.BaseEntity;
import org.springframework.samples.dobble.user.User;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "games")
public class Game extends BaseEntity{
    
    @Enumerated(EnumType.STRING)
    private GameModeEnum gamemode;

    @ManyToOne
    @JoinColumn(name = "ownerId")
    private User owner;
    
    @ManyToOne
    @JoinColumn(name = "winnerId")
    private User winner;

    @ManyToMany(mappedBy = "games")
    private List<User> users;

    @ManyToMany
    @JoinTable(name = "gamecards")
    private List<Card> centralDeck;

}