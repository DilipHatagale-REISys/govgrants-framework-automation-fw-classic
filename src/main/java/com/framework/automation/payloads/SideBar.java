package com.framework.automation.payloads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SideBar {
	private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
	private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";

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
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionContent__c), filterClause),
								String.valueOf(SObjectAPIs.Name), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionContent__c), filterClause),
								String.valueOf(SObjectAPIs.Name), value);
			}
			break;
		case "AVAILABLE FOR PROFILES":
			if (m.find() && (!value.contains("TR"))) {
				System.out.println("entered inte");
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionContent__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__AvailableForProfiles__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionContent__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__AvailableForProfiles__c), value);
			}
			break;
		case "SEQUENCE":
			if (m.find()) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionContent__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionContent__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
			}
			break;
		case "OPEN IN NEW WINDOW":
			if (m.find() || (value.contains("true")) || (value.contains("false"))) {

				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionContent__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__OpenInNewWindow__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionContent__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__OpenInNewWindow__c), value);
			}
			break;
		case "TARGET URL":
			if (m.find()) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionContent__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__Link__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionContent__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__Link__c), value);
			}
			break;
		}
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
	public String getPhasesFieldConfig(String fieldLabel, String value, String filterClause) {
		String finalPayload = null;
		Pattern p = Pattern.compile("([0-9])");
		Matcher m = p.matcher(value);
		switch (fieldLabel.toUpperCase()) {
		case "TAB ICON CSS":
			if (m.find()) {
				finalPayload = String.format(
						payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), new ApiUtilities()
								.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__TabIconCSS__c), value);
			} else {
				finalPayload = String.format(
						payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), new ApiUtilities()
								.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__TabIconCSS__c), value);
			}
			break;
		case "ABBREVIATION":
			if (m.find()) {
				finalPayload = String.format(
						payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), new ApiUtilities()
								.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__Abbreviation__c), value);
			} else {
				finalPayload = String.format(
						payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), new ApiUtilities()
								.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__Abbreviation__c), value);
			}
			break;
		case "BODY FLEX TABLE":
			if (m.find()) {
				finalPayload = String.format(
						payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), new ApiUtilities()
								.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__BodyTable__c), value);
			} else {
				finalPayload = String.format(
						payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), new ApiUtilities()
								.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__BodyTable__c), value);
			}
			break;
		case "CONFIG: CUSTOM APP":
			if (m.find()) {
				finalPayload = String.format(
						payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), new ApiUtilities()
								.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__CustomAppConfig__c), value);
			} else {
				finalPayload = String.format(
						payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), new ApiUtilities()
								.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__CustomAppConfig__c), value);
			}
			break;
		case "SIDEBAR COMPONENT SEQUENCE":
			if (m.find()) {
				finalPayload = String.format(
						payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), new ApiUtilities()
								.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__SidebarComponentSequence__c), value);
			} else {
				finalPayload = String.format(
						payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), new ApiUtilities()
								.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__SidebarComponentSequence__c), value);
			}
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
			if (m.find()) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
								String.valueOf(SObjectAPIs.Name), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
								String.valueOf(SObjectAPIs.Name), value);
			}
			break;
		case "ACTIVE":
			if (m.find()) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__Active__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__Active__c), value);
			}
			break;
		case "ICON CSS":
			if (m.find()) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__IconCSS__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__IconCSS__c), value);
			}
			break;
		case "INTERNAL UNIQUE ID":
			if (m.find()) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__InternalUniqueID__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__InternalUniqueID__c), value);
			}
			break;
		case "PHASE CONFIG":
			if (m.find()) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), value);
			}
			break;
		case "SEQUENCE":
			if (m.find()) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
			}
			break;
		case "TYPE":
			if (m.find()) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__Type__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
								new ApiUtilities().getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__Type__c), value);
			}
			break;
		}
		System.out.println("final payload is " + finalPayload);
		return finalPayload;
	}
}
