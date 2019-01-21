package com.framework.automation.projectmanager;

import java.io.IOException;

import com.automation.rei.controller.EnvironmentFetcher;
import com.automation.rei.controller.UsersController;
import com.automation.rei.corelib.Properties_Logs;

public class UsersAndURL implements UsersController {

	/**
	 * @REI-Systems
	 * @author nauman.shahid
	 * @category Handles users based on different environments
	 */
	/**
	 * @REI-Systems
	 * @author nauman.shahid
	 * @category Handles users based on different environments
	 */
	@Override
	public String getUserName(String userLevel) {
		String userName = null;
		if ((EnvironmentFetcher.environmentName != null) && (EnvironmentFetcher.environmentName.contains("QA"))) {
			userName = getQAEnvironmentUser(userLevel);
		} else if ((EnvironmentFetcher.environmentName != null) && (EnvironmentFetcher.environmentName.contains("UAT"))) {
			// To be implemented
		} else {
		    userName = getQAEnvironmentUser(userLevel);
		}

		return userName;
	}

	@Override
	public String getPassword(String userLevel) {
		return "Automation@12345";
	}

	/**
	 * Switches based on the user type passed.
	 *
	 * @param userType
	 * @return the password for the passed in user type.
	 */
	private String getQAEnvironmentPassword(String userType) {
		String password;
		switch (userType.toUpperCase()) {
		case "AUTOMATION":
			password = "Automation@12345";
			break;
		case "AUTOMATION-EXE":
			password = "Automation@12345";
			break;
		case "AUTOMATION-PM":
			password = "Automation@12345";
			break;
		case "AUTOMATION-REVIEWER":
			password = "Automation@12345";
			break;
		case "AUTOMATION-APPLICANT":
			password = "Automation@12345";
			break;
		default:
			password = "Automation@12345";
		}

		return password;
	}

	/**
	 * Switches based on the user type passed in and returns the username for the
	 * type. Used for the SPQA environment.
	 * 
	 * @param userLevel
	 * @return
	 */
	private String getQAEnvironmentUser(String userLevel) {
		String username;

		switch (userLevel.toUpperCase()) {
		case "AUTOMATION":
			username = "qa_automation@ggp.test5";
			break;
		case "AUTOMATION-EXE":
			username = "automationexe@reisystems.com";
			break;
		case "AUTOMATION-PM":
			username = "automationpm@reisystems.com";
			break;
		case "AUTOMATION-REVIEWER":
			username = "monukumar.mr20@gmail.com";
			break;
		case "AUTOMATION-APPLICANT":
			username = "automation-applicant@ggptest5.com";
			break;
		default:
			username = "qa_automation@ggp.test5";
		}
		return username;
	}
}
