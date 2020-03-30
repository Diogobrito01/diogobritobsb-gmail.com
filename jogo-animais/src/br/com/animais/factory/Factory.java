package br.com.animais.factory;

import br.com.animais.dao.AnimalDAO;
import br.com.animais.dao.AnimalDAOImpl;
import br.com.animais.service.AnimalService;
import br.com.animais.service.AnimalServiceImpl;

public class Factory {
	
	public static AnimalDAO getAnimalDAO() {
		return new AnimalDAOImpl();
	}
	
	public static AnimalService getAnimalService() {
		return new AnimalServiceImpl();
	}

}
