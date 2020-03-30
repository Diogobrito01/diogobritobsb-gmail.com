package br.com.animais.service;

import java.util.List;

import br.com.animais.entity.Animal;
import br.com.animais.enums.HabitateEnum;

public interface AnimalService {

	 void salvar(Animal animal);
	 
	 List<Animal> consultarAnimaisPorHabitate(HabitateEnum... habitateEnum);
}
