package www.jca.com;

import javax.swing.JOptionPane;

public class MainClass {

	public static void main(String[] args) {
		String strNum1 = "789"; //문자열
		String strNum2 = "211";
		
		System.out.println("append: " + (strNum1 + strNum2));
		
		int sum = 0;
		int number1 = Integer.parseInt(strNum1);
		int number2 = Integer.parseInt(strNum2);
		sum = number1 + number2;
		
		System.out.println("sum: "+sum);
	}
}
