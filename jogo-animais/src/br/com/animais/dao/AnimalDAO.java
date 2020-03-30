package br.com.animais.dao;

import java.util.List;

import br.com.animais.entity.Animal;
import br.com.animais.enums.HabitateEnum;

public interface AnimalDAO {

	 void salvar(Animal animal);
	 
	 List<Animal> consultarAnimaisPorHabitate(HabitateEnum... habitateEnum);
}
