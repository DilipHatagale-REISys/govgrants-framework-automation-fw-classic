package com.framework.automation.projectmanager;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.automation.rei.controller.EnvironmentFetcher;
import com.automation.rei.webservices.RestfulWebServices;
import com.google.gson.JsonObject;
import com.jayway.restassured.response.Response;

public class SetUpConfiguration {
	RestfulWebServices apiCall = new RestfulWebServices();
	JsonObject sObjectConfig;
	JsonObject fieldConfig;
	private static String endPoint = EnvironmentFetcher.environment;
	private String defaultRetrieveEndPoint = "https://ggptest5-dev-ed.my.salesforce.com/services/apexrest/frameworkAPIRetrieve";
	private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
	private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";

	/**
	 * create json object for different objects
	 * 
	 * @param fieldName:
	 *            Name of the relevant field in the component core field
	 * @param componentName:
	 *            Name of the component that we want to configure
	 * @param value:the
	 *            value we want to modify
	 * @return
	 */
	/**
	 * 
	 * @param fieldLabel:
	 *            Label/name of API
	 * @param componentName:
	 *            Name of component like phases , side bar
	 * @param ComponentCoreFieldName:
	 *            Main filed like GrantorHome
	 * @param SubCCFieldName:
	 *            Sub core field like My tasks in accordian header
	 * @param value
	 *            : value that we want to use as variable and test
	 * @return
	 */
	public String getConfigJson(String fieldLabel, String componentName, String ComponentCoreFieldName,
			String SubCCFieldName, String value) {
		String stringPayload = null;
		switch (componentName.toUpperCase()) {
		case "PHASES":
			stringPayload = getPhasesFieldConfig(fieldLabel, ComponentCoreFieldName, value,
					getFilterClause(componentName, ComponentCoreFieldName, SubCCFieldName));
			break;
		case "ACCORDIAN HEADER":
			stringPayload = setAccordianHeaderConfig(fieldLabel, ComponentCoreFieldName, value,
					getFilterClause(componentName, ComponentCoreFieldName, SubCCFieldName));
			break;
		case "ACCORDIAN CONTENT":
			stringPayload = setAccordianContentFieldConfig(fieldLabel, ComponentCoreFieldName, value,
					getFilterClause(componentName, ComponentCoreFieldName, SubCCFieldName));
			break;
		}
		return stringPayload;
	}

	/**
	 * get Id based on component api and field name
	 * 
	 * @param ComponentAPI
	 * @param ComponentCoreFieldName
	 * @return
	 */
	private String getComponentCoreFieldId(String ComponentAPI, String ComponentCoreFieldName, String filterClause) {
		Response response = apiCall.postCall(
				getPayLaodForIdRetrieval(ComponentAPI, ComponentCoreFieldName, filterClause), null,
				defaultRetrieveEndPoint, "Authorization", "Bearer " + ProjectWebServices.tokenString, null);
		String[] splittedStringForId = response.body().asString().split(":");
		String iD = splittedStringForId[4].substring(2, 20);
		return iD;
	}

	/**
	 * create payload for getting ID API call
	 * 
	 * @param ComponentAPI
	 * @param ComponentCoreFieldName
	 * @return
	 */
	private JsonObject getPayLaodForIdRetrieval(String ComponentAPI, String ComponentCoreFieldName,
			String filterClause) {
		sObjectConfig = new JsonObject();
		sObjectConfig.addProperty("sObjectAPIName", ComponentAPI);
		sObjectConfig.addProperty("fields", "Id");
		sObjectConfig.addProperty("filterClause", filterClause);
		System.out.println("json is " + sObjectConfig);
		return sObjectConfig;
	}

	private String getFilterClause(String componentName, String ComponentCoreFieldName, String name) {
		String filterClause = null;
		switch (componentName.toUpperCase()) {
		case "PHASES":
			filterClause = "Name=" + "'" + ComponentCoreFieldName + "'";
			break;
		case "ACCORDIAN HEADER":
			filterClause = String.valueOf(SObjectAPIs.GNT__PhaseConfig__r) + ".Name=" + "'" + ComponentCoreFieldName
					+ "' and Name =" + "'" + name + "'";
			break;
		case "ACCORDIAN CONTENT":
			filterClause = String.valueOf(SObjectAPIs.GNT__AccordionSubHeader__r) + "."
					+ String.valueOf(SObjectAPIs.GNT__AccordionHeader__r) + "."
					+ String.valueOf(SObjectAPIs.GNT__PhaseConfig__r) + ".Name=" + "'" + ComponentCoreFieldName + "'"
					+ "and Name =" + "'" + name + "'";
		}
		return filterClause;
	}

	/**
	 * Handles Accordian Content level configuration
	 * 
	 * @param fieldLabel
	 *            : Name of the field. Name of the API.
	 * @param ComponentCoreFieldName:
	 *            Main phase name: eg; GrantorHome
	 * @param value:
	 *            Parameter that we want to change
	 * @param filterClause:
	 *            filter clause to get the specific id
	 * @return: payload
	 */
	private String setAccordianContentFieldConfig(String fieldLabel, String ComponentCoreFieldName, String value,
			String filterClause) {
		String finalPayload = null;
		Pattern p = Pattern.compile("([0-9])");
		Matcher m = p.matcher(value);
		switch (fieldLabel.toUpperCase()) {
		case "LABEL":
			if (m.find()) {
				finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
						getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
								ComponentCoreFieldName, filterClause),
						String.valueOf(SObjectAPIs.Name), value);
			} else {
				finalPayload = String.format(payloadForStringValue,
						String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
						getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
								ComponentCoreFieldName, filterClause),
						String.valueOf(SObjectAPIs.Name), value);
			}
			break;
		case "AVAILABLE FOR PROFILES":
			if (m.find() && (!value.contains("TR"))) {
				System.out.println("entered inte");
				finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
						getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
								ComponentCoreFieldName, filterClause),
						String.valueOf(SObjectAPIs.GNT__AvailableForProfiles__c), value);
			} else {
				finalPayload = String.format(payloadForStringValue,
						String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
						getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
								ComponentCoreFieldName, filterClause),
						String.valueOf(SObjectAPIs.GNT__AvailableForProfiles__c), value);
			}
			break;
		}
		System.out.println(finalPayload);
		return finalPayload;
	}

	/**
	 * Handles phase level configuration
	 * 
	 * @param fieldLabel
	 *            : Name of the field. Name of the API.
	 * @param ComponentCoreFieldName:
	 *            Main phase name: eg; GrantorHome
	 * @param value:
	 *            Parameter that we want to change
	 * @param filterClause:
	 *            filter clause to get the specific id
	 * @return: payload
	 */
	private String getPhasesFieldConfig(String fieldLabel, String ComponentCoreFieldName, String value,
			String filterClause) {
		String finalPayload = null;
		Pattern p = Pattern.compile("([0-9])");
		Matcher m = p.matcher(value);
		switch (fieldLabel.toUpperCase()) {
		case "TAB ICON CSS":
			if (m.find()) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
								getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
										ComponentCoreFieldName, filterClause),
								String.valueOf(SObjectAPIs.GNT__TabIconCSS__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
								getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
										ComponentCoreFieldName, filterClause),
								String.valueOf(SObjectAPIs.GNT__TabIconCSS__c), value);
			}
			break;
		case "ABBREVIATION":
			if (m.find()) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
								getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
										ComponentCoreFieldName, filterClause),
								String.valueOf(SObjectAPIs.GNT__Abbreviation__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
								getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
										ComponentCoreFieldName, filterClause),
								String.valueOf(SObjectAPIs.GNT__Abbreviation__c), value);
			}
			break;
		case "BODY FLEX TABLE":
			if (m.find()) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
								getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
										ComponentCoreFieldName, filterClause),
								String.valueOf(SObjectAPIs.GNT__BodyTable__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
								getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
										ComponentCoreFieldName, filterClause),
								String.valueOf(SObjectAPIs.GNT__BodyTable__c), value);
			}
			break;
		case "CONFIG: CUSTOM APP":
			if (m.find()) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
								getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
										ComponentCoreFieldName, filterClause),
								String.valueOf(SObjectAPIs.GNT__CustomAppConfig__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
								getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
										ComponentCoreFieldName, filterClause),
								String.valueOf(SObjectAPIs.GNT__CustomAppConfig__c), value);
			}
			break;
		case "SIDEBAR COMPONENT SEQUENCE":
			if (m.find()) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
								getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
										ComponentCoreFieldName, filterClause),
								String.valueOf(SObjectAPIs.GNT__SidebarComponentSequence__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
								getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
										ComponentCoreFieldName, filterClause),
								String.valueOf(SObjectAPIs.GNT__SidebarComponentSequence__c), value);
			}
			break;
		}
		return finalPayload;
	}

	/**
	 * Handles Accordian configuration
	 * 
	 * @param fieldLabel
	 *            : Name of the field. Name of the API.
	 * @param ComponentCoreFieldName:
	 *            Main phase name: eg; GrantorHome
	 * @param value:
	 *            Parameter that we want to change
	 * @param filterClause:
	 *            filter clause to get the specific id
	 * @return: payload
	 */
	private String setAccordianHeaderConfig(String fieldLabel, String ComponentCoreFieldName, String value,
			String filterClause) {
		String finalPayload = null;
		Pattern p = Pattern.compile("([0-9])");
		Matcher m = p.matcher(value);
		switch (fieldLabel.toUpperCase()) {
		case "NAME":
			if (m.find()) {
				finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
						getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								ComponentCoreFieldName, filterClause),
						String.valueOf(SObjectAPIs.Name), value);
			} else {
				finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
						getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								ComponentCoreFieldName, filterClause),
						String.valueOf(SObjectAPIs.Name), value);
			}
			break;
		case "ACTIVE":
			if (m.find()) {
				finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
						getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								ComponentCoreFieldName, filterClause),
						String.valueOf(SObjectAPIs.GNT__Active__c), value);
			} else {
				finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
						getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								ComponentCoreFieldName, filterClause),
						String.valueOf(SObjectAPIs.GNT__Active__c), value);
			}
			break;
		case "ICON CSS":
			if (m.find()) {
				finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
						getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								ComponentCoreFieldName, filterClause),
						String.valueOf(SObjectAPIs.GNT__IconCSS__c), value);
			} else {
				finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
						getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								ComponentCoreFieldName, filterClause),
						String.valueOf(SObjectAPIs.GNT__IconCSS__c), value);
			}
			break;
		case "INTERNAL UNIQUE ID":
			if (m.find()) {
				finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
						getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								ComponentCoreFieldName, filterClause),
						String.valueOf(SObjectAPIs.GNT__InternalUniqueID__c), value);
			} else {
				finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
						getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								ComponentCoreFieldName, filterClause),
						String.valueOf(SObjectAPIs.GNT__InternalUniqueID__c), value);
			}
			break;
		case "PHASE CONFIG":
			if (m.find()) {
				finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
						getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								ComponentCoreFieldName, filterClause),
						String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), value);
			} else {
				finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
						getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								ComponentCoreFieldName, filterClause),
						String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), value);
			}
			break;
		case "SEQUENCE":
			if (m.find()) {
				finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
						getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								ComponentCoreFieldName, filterClause),
						String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
			} else {
				finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
						getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								ComponentCoreFieldName, filterClause),
						String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
			}
			break;
		case "TYPE":
			if (m.find()) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
										ComponentCoreFieldName, filterClause),
								String.valueOf(SObjectAPIs.GNT__Type__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
										ComponentCoreFieldName, filterClause),
								String.valueOf(SObjectAPIs.GNT__Type__c), value);
			}
			break;
		}
		return finalPayload;
	}

}
