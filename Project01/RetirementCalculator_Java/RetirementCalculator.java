
import java.util.*;

import acm.program.*;

public class RetirementCalculator extends ConsoleProgram {
	public void run() {
		
		println("What is your current Age?");
		int CA = currentAge();
		
		println("What Age would you like to retire?");
		int RA = retirementAge();
		
		
		int YR = calculateYearsToRetire(CA, RA);
		println("You have "+YR+ " years left until you can retire.");
		
		int CY = currentYear();
		int RY = yearOfRetirement(CY, YR);
		println("It's "+CY+ ", so you can retire in "+RY+" ");
	}
	
	private int currentAge() {
		int currentAge = readInt();
		return currentAge;
	}
	
	private int retirementAge() {
		int retirementAge = readInt();
		return retirementAge;
	}
	
	private int calculateYearsToRetire(int CA, int RA) {
		int yearsToRetirement = RA - CA;
		return yearsToRetirement;
	}
	
	private int currentYear() {
		Calendar calendar = Calendar.getInstance();
		int year = calendar.get(Calendar.YEAR);
		return year;
	}
	
	private int yearOfRetirement(int CY, int YR) {
		int yearOfRetirement = CY + YR;
		return yearOfRetirement;
	}
}

