package br.com.animais.entity;

import java.io.Serializable;

import br.com.animais.enums.HabitateEnum;

public class Animal implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;

	private String nome;

	private HabitateEnum habitateEnum;

	public Animal(Integer id, String nome, HabitateEnum habitateEnum) {
		super();
		this.id = id;
		this.nome = nome;
		this.habitateEnum = habitateEnum;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public HabitateEnum getHabitateEnum() {
		return habitateEnum;
	}

	public void setHabitateEnum(HabitateEnum habitateEnum) {
		this.habitateEnum = habitateEnum;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((habitateEnum == null) ? 0 : habitateEnum.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Animal other = (Animal) obj;
		if (habitateEnum != other.habitateEnum)
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Animal [id=" + id + ", nome=" + nome + ", habitateEnum=" + habitateEnum.getValor() + "]";
	}
	
}
