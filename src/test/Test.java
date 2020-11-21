package test;

import beans.BeanEquipamento;

public class Test {

	public static void main(String[] args) {
		BeanEquipamento beanEquipamento =  new BeanEquipamento();
		
		int valor = 0;
		
		if(valor <= 3) {
			valor ++;
			beanEquipamento.status_equip(valor);
		}
		
		System.out.println(beanEquipamento.status_equip(valor));
		
	}

}
