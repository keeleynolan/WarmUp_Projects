/*
 * File: BlankClass.java
 * ---------------------
 * This class is a blank one that you can change at will. Remember, if you change
 * the class name, you'll need to change the filename so that it matches.
 * Then you can extend GraphicsProgram, ConsoleProgram, or DialogProgram as you like.
 */

import acm.program.*;
//import java.lang.*;

public class CountLetters extends ConsoleProgram {
	public void run() {
		println("This program reads what you tell it and counts the letters of your entry.");
		println("Go ahead and give it a try.");
		println("To exit the program simply enter 0");
		println("");
		
		while (true) {
		println("Tell me something!");
		String userEntry = readLine();
		if (userEntry.equals("0")) break;
		if (userEntry.isEmpty()) {
			userEntry = readLine("Please enter something: ");
		}
		int counter = 0;
		
		for (int i = 0; i < userEntry.length(); i++) {
			char ch = userEntry.charAt(i);
			boolean ch2 = Character.isLetter(ch);
			if (ch2 == true)  {
				counter++;
			}
			
		}
		
		println("Awesome! There are " +counter+ " letters in your entry");
		}
		
		println("Exiting the program.");
	}
}
