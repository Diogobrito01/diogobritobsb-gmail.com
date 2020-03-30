package br.com.animais.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import br.com.animais.entity.Animal;
import br.com.animais.enums.HabitateEnum;

public class AnimalDAOImpl implements AnimalDAO {

   private Map<HabitateEnum, List<Animal>> bancoDeDados = new HashMap<HabitateEnum, List<Animal>>();
	  
	@Override
	public void salvar(Animal animal) {
		List<Animal> animaisList = bancoDeDados.get(animal.getHabitateEnum());
		if (animaisList == null) {
			animaisList = new ArrayList<Animal>();
		}
		animaisList.add(animal);
		this.bancoDeDados.put(animal.getHabitateEnum(), animaisList);
	}

	@Override
	public List<Animal> consultarAnimaisPorHabitate(HabitateEnum... habitateEnum) {
		List<Animal> listAnimal = new ArrayList<Animal>();
		for (HabitateEnum enumObj : habitateEnum) {
			List<Animal> list = bancoDeDados.get(enumObj);
			if (list != null) {
				listAnimal.addAll(list);
			}
		}
		if (listAnimal.size() == 0) {
			return null;
		}
		return listAnimal;
	}

}
