package soy hector;

public class Main2 {
	
	public static void main(String[] args) {
		
		int[] nums=new int[10];
		boolean error=false;
		int x=0;
		
		do {
			
			try {
				nums[x] = 5;
				x++;
			} catch (ArrayIndexOutOfBoundsException e) {
				error=true;
			}
		
		} while (!error);
		
		System.out.println("FIN");
	}
	
	

}
