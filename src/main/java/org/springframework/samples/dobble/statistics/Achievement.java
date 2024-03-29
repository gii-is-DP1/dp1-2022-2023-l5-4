package org.springframework.samples.dobble.statistics;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ManyToMany;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.samples.dobble.model.NamedEntity;
import org.springframework.samples.dobble.user.User;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Achievement extends NamedEntity {
    
    @NotBlank
    private String description;

    private String badgeImage;

    @Min(0)
    private double threshold;
    
    @Enumerated(EnumType.STRING)
    @NotNull
    Metric metric;

    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "achievements")
    private Set<User> users;

    public String getActualDescription(){
        return description.replace("<THRESHOLD>",String.valueOf(threshold));
    }
}
