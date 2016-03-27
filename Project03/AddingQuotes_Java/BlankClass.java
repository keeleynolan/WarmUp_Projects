/*
 * File: BlankClass.java
 * ---------------------
 * This program adds quotes to a string that a user enters.
 */

import acm.program.*;

public class BlankClass extends ConsoleProgram {
	public void run() {
		/* You fill this in */
		
		//read in answers from the user
		String someQuote = readLine("Tell me a quote?");
		String someAuthor = readLine("Who said it?");
		
		//concatinate quotation marks on the string
		print("" +someAuthor+ " says  \" "+someQuote+ " \"  ");
	
		
	}
}

