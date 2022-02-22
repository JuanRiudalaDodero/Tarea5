package pro9;

import java.util.Scanner;

public class Main {
	
	static Scanner sc=new Scanner(System.in);
	
	public static void main(String[] args) {
		Edad edad=null;
		boolean error=true;
		
		Edad a1=new Edad(1,100);
		Edad a2=new Edad(1,100);
		
		a1.setEdad(16);
		a2.setEdad(26);
		
		System.out.println(a1.compareTo(a2));
		System.out.println(a2.compareTo(a1));
		System.out.println(a1.compareTo(a1));
		
		do {
			try {
				System.out.println("Edad mínima:");
				int v = Integer.parseInt(sc.nextLine());
				System.out.println("Edad máxima:");
				int v2 = Integer.parseInt(sc.nextLine());
				edad = new Edad(v, v2);
				error=false;
			} catch (RangoIncorrectoException e) {
				System.out.println("Valores incorrectos!!!");
			} catch (NumberFormatException e) {
				System.out.println("La edad debe ser un número entero!!");
			}
		} while (error);
		
		
		error=true;
		do {
			try {
				System.out.println("Introduce tu edad");
				edad.setEdad(Integer.parseInt(sc.nextLine()));

				error=false;
			} catch (NumberFormatException e) {
				System.out.println("Edad incorrecta!!!");
			} catch (EdadFueraDeRangoException e) {
				System.out.println("La edad debe estar entre "+edad.getMin()+" y "+edad.getMax());
			}
		} while (error);

	}

}
