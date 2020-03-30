package br.com.animais.view;

import java.awt.Component;

import javax.swing.JOptionPane;

import br.com.animais.entity.Animal;
import br.com.animais.enums.HabitateEnum;

public class PerguntasView {
	
	public int inicio() {
		return JOptionPane.showConfirmDialog(null, "Pense em um animal.", "Jogo dos animais", 2);
	}

	public int pergunta(Animal a) {
		return JOptionPane.showConfirmDialog(null, "O animal que você pensou é um(a) " + a.getNome() + "?", "Informe",0);
	}
	
	public HabitateEnum perguntaHabitate() {
		int resultado = 0;
		resultado = JOptionPane.showConfirmDialog(null, "O animal que você pensou vive na Água?", "Informe",0);
		if (resultado == 0) {
			return HabitateEnum.AGUA;
		}
		resultado = JOptionPane.showConfirmDialog(null, "O animal que você pensou vive na Terra?", "Informe",0);
		if (resultado == 0) {
			return HabitateEnum.TERRA;
		}
		resultado = JOptionPane.showConfirmDialog(null, "O animal que você pensou vive  Voando?", "Informe",0);
		if (resultado == 0) {
			return HabitateEnum.AR;
		}
		return null;
	}

	public String entrada(String mensagem) {
		while (true) {
			String valor = JOptionPane.showInputDialog((Component) null, mensagem);
			if (valor == null)
				mostraMensagem("INFORME ALGUM VALOR!");
			if (valor != null)
				return valor;
		}
	}

	public void mostraMensagem(String mensagem) {
		JOptionPane.showMessageDialog(null, mensagem);
	}
}
