package test;

import beans.BeanEquipamento;

public class Test {

	public static void main(String[] args) {
		
		BeanEquipamento beanEquipamento = new BeanEquipamento();
		
		String status = beanEquipamento.status_equip(3);
		
		System.out.println(status);
	}

}
