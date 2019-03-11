package com.framework.automation.payloads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SideBar {
	private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
	private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";
	private ApiUtilities apiUtilities = new ApiUtilities();

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
	public String setAccordianContentFieldConfig(String fieldLabel, String value, String filterClause) {
		String finalPayload = null;
		Pattern p = Pattern.compile("([0-9])");
		Matcher m = p.matcher(value);
		switch (fieldLabel.toUpperCase()) {
		case "NAME":
			if (m.find()) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
								apiUtilities.getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionContent__c), filterClause),
								String.valueOf(SObjectAPIs.Name), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
								apiUtilities.getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionContent__c), filterClause),
								String.valueOf(SObjectAPIs.Name), value);
			}
			break;
		case "AVAILABLE FOR PROFILES":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
							filterClause),
					String.valueOf(SObjectAPIs.GNT__AvailableForProfiles__c), value);
			break;
		case "SEQUENCE":
			finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
							filterClause),
					String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
			break;
		case "OPEN IN NEW WINDOW":
			finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
							filterClause),
					String.valueOf(SObjectAPIs.GNT__OpenInNewWindow__c), value);
			break;
		case "TARGET URL":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
							filterClause),
					String.valueOf(SObjectAPIs.GNT__Link__c), value);
			break;
		}
		return finalPayload;
	}

	/**
	 * Handles Side Bar Header level configuration
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
	public String setSideBarFieldConfig(String fieldLabel, String value, String filterClause) {
		String finalPayload = null;
		Pattern p = Pattern.compile("([0-9])");
		Matcher m = p.matcher(value);
		switch (fieldLabel.toUpperCase()) {
		case "TAB ICON CSS":
			if (m.find()) {
				finalPayload = String.format(
						payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), apiUtilities
								.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__TabIconCSS__c), value);
			} else {
				finalPayload = String.format(
						payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), apiUtilities
								.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__TabIconCSS__c), value);
			}
			break;
		case "ABBREVIATION":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__Abbreviation__c), value);
			break;
		case "SIDEBAR COMPONENT SEQUENCE":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__SidebarComponentSequence__c), value);
			break;
		}
		System.out.println("method for finalpayload " + finalPayload);
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
	public String setAccordianHeaderConfig(String fieldLabel, String value, String filterClause) {
		String finalPayload = null;
		Pattern p = Pattern.compile("([0-9])");
		Matcher m = p.matcher(value);
		switch (fieldLabel.toUpperCase()) {
		case "NAME":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
					String.valueOf(SObjectAPIs.Name), value);
			break;
		case "ACTIVE":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__Active__c), value);
			break;
		case "ICON CSS":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__IconCSS__c), value);
			break;
		case "SEQUENCE":
			finalPayload = String.format(
					payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
			break;
		case "TYPE":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__Type__c), value);
			break;
		case "RENDER EXPRESSION JSON":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__HideExpressionJSON__c), value);
			break;
		}
		System.out.println("final payload is " + finalPayload);
		return finalPayload;
	}
}
