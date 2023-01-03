

package org.springframework.samples.dobble.symbol;

import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.ws.rs.DefaultValue;

import org.springframework.samples.dobble.card.Card;
import org.springframework.samples.dobble.model.BaseEntity;

import lombok.Getter;
import lombok.Setter;

@Entity	
@Getter
@Setter
@Table(name="symbols")
public class Symbol extends BaseEntity {


	@OneToMany(mappedBy="symbol")
	@Size(min=1)
	@NotNull
	private List<SymbolVariant> symbolVariants;

	@ManyToMany(targetEntity=Card.class,fetch=FetchType.EAGER,mappedBy = "symbols")
	private List<Card> cards;

	public SymbolVariant getVariant(Long symbolSetId){
		return symbolVariants.stream().filter(variant->variant.getSymbolSet().getId()==symbolSetId).findFirst().get();
	}

	
	public String toString(){
		return this.getId().toString();
	}
	
}
