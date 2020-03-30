package br.com.animais.main;

import java.util.List;

import br.com.animais.entity.Animal;
import br.com.animais.enums.HabitateEnum;
import br.com.animais.factory.Factory;
import br.com.animais.service.AnimalService;
import br.com.animais.view.PerguntasView;

public class JogoRun {

	private AnimalService animalService;
	
	public void execute() {
		PerguntasView perguntasView = new PerguntasView();
		int inicioPrograma = perguntasView.inicio();
		
		if (inicioPrograma == 0) {
			List<Animal> animalList = getAnimalService().consultarAnimaisPorHabitate(HabitateEnum.AGUA, HabitateEnum.AR,
					HabitateEnum.TERRA);
			if (animalList == null) {
				Animal cachorro = new Animal(1, "Cachorro", HabitateEnum.TERRA);
				getAnimalService().salvar(cachorro);
				Animal papagaio = new Animal(2, "Papagaio", HabitateEnum.AR);
				getAnimalService().salvar(papagaio);
				Animal tubarao = new Animal(3, "Tubarão", HabitateEnum.AGUA);
				getAnimalService().salvar(tubarao);
			}
			
			HabitateEnum enumAnimalHabitate = perguntasView.perguntaHabitate();
			animalList = getAnimalService().consultarAnimaisPorHabitate(enumAnimalHabitate);
			
			int resultado = 0;
			for (Animal animal : animalList) {
				resultado = perguntasView.pergunta(animal);
				if (resultado == 0) {
					break;
				}
			}
			
			if (resultado == 0) {
				perguntasView.mostraMensagem("Eu venci.");
			}else {
				String nomeAnimal = perguntasView.entrada("Qual o nome do Animal que você pensou?");
				String habitateAnimal = perguntasView.entrada("Onde esse animal vive? \n 1 - Voando \n 2 - Terra \n 3 - Água \n (Apenas digite o número) ");
				Integer codEnum = Integer.parseInt(habitateAnimal);
				Animal animal = null;
				if (HabitateEnum.AGUA.getValor() == codEnum) {
					animal = new Animal(0, nomeAnimal, HabitateEnum.AGUA);
				}else if (HabitateEnum.TERRA.getValor() == codEnum) {
					animal = new Animal(0, nomeAnimal, HabitateEnum.TERRA);
				}else if (HabitateEnum.AR.getValor() == codEnum) {
					animal = new Animal(0, nomeAnimal, HabitateEnum.AR);
				}
				getAnimalService().salvar(animal);
				execute();
			}
		}
		
	}

	public AnimalService getAnimalService() {
		if (this.animalService == null) {
			this.animalService = Factory.getAnimalService();
		}
		return animalService;
	}
	
}
