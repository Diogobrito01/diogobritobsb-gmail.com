package br.com.animais.enums;

public enum HabitateEnum {

	AR(1), TERRA(2), AGUA(3);

	private final int valor;

	HabitateEnum(int valorOpcao){
        valor = valorOpcao;
    }

	public int getValor() {
		return valor;
	}
}
