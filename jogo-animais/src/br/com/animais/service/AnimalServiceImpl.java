package br.com.animais.service;

import java.util.List;

import br.com.animais.dao.AnimalDAO;
import br.com.animais.entity.Animal;
import br.com.animais.enums.HabitateEnum;
import br.com.animais.factory.Factory;

public class AnimalServiceImpl implements AnimalService {

	private AnimalDAO animalDAO;
	
	@Override
	public void salvar(Animal animal) {
		getAnimalDAO().salvar(animal);
	}

	@Override
	public List<Animal> consultarAnimaisPorHabitate(HabitateEnum... habitateEnum) {
		return getAnimalDAO().consultarAnimaisPorHabitate(habitateEnum);
	}

	public AnimalDAO getAnimalDAO() {
		if (this.animalDAO == null) {
			this.animalDAO = Factory.getAnimalDAO();
		}
		return animalDAO;
	}
}
