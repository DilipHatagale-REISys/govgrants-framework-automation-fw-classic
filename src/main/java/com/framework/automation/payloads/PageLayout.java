package com.framework.automation.payloads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PageLayout {
	private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
	private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";
	private ApiUtilities apiUtilities = new ApiUtilities();

	/**
	 * Set pay load for page layout main page
	 * 
	 * @param fieldLabel
	 * @param value
	 * @param filterClause
	 * @return
	 */
	public String setPageLayOutConfig(String fieldLabel, String value, String filterClause) {
		String finalPayload = null;
		Pattern p = Pattern.compile("([0-9])");
		Matcher m = p.matcher(value);
		switch (fieldLabel.toUpperCase()) {
		case "HEADER":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c),
							filterClause),
					String.valueOf(SObjectAPIs.GNT__Title__c), value);
			break;
		case "PAGE INSTRUCTION TEXT":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c),
							filterClause),
					String.valueOf(SObjectAPIs.GNT__HeaderDescription__c), value);
			break;
		case "CREATE HEADER OVERRIDE":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c),
							filterClause),
					String.valueOf(SObjectAPIs.GNT__HeaderOverride__c), value);
			break;
		case "HIDE PDF DOWNLOAD":
			if (m.find() || (value.contains("true")) || (value.contains("false"))) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c),
								apiUtilities.getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__HidePDFDownload__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c),
								apiUtilities.getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__HidePDFDownload__c), value);
			}
			break;
		case "HIDE ON DEMAND SNAPSHOT":
			if (m.find() || (value.contains("true")) || (value.contains("false"))) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c),
								apiUtilities.getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__HideOnDemandSnaphot__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c),
								apiUtilities.getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__HideOnDemandSnaphot__c), value);
			}
			break;
		case "CANCEL BUTTON LABEL":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c),
							filterClause),
					String.valueOf(SObjectAPIs.GNT__CancelButtonLabel__c), value);
			break;
		case "SAVE BUTTON LABEL":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageLayoutConfig__c),
							filterClause),
					String.valueOf(SObjectAPIs.GNT__SaveButtonLabel__c), value);
			break;
		}
		System.out.println(finalPayload);
		return finalPayload;
	}

	/**
	 * setup configuration for page lay out action
	 * 
	 * @param fieldLabel
	 * @param value
	 * @param filterClause
	 * @return
	 */
	public String setPageLayOutActionConfig(String fieldLabel, String value, String filterClause) {
		String finalPayload = null;
		Pattern p = Pattern.compile("([0-9])");
		Matcher m = p.matcher(value);
		switch (fieldLabel.toUpperCase()) {
		case "HIDE DECISION EXPRESSION":
			finalPayload = String
					.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c), filterClause),
							String.valueOf(SObjectAPIs.GNT__HideDecisionExpression__c), value);
			break;
		case "HIDE EXPRESSION JSON":
			finalPayload = String
					.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c), filterClause),
							String.valueOf(SObjectAPIs.GNT__HideExpressionJSON__c), value);
			break;
		case "HIDE FOR PROFILE":
			finalPayload = String
					.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c), filterClause),
							String.valueOf(SObjectAPIs.GNT__HideForProfile__c), value);
			break;
		case "ENABLE PROMPT INPUT DIALOG":
			if (m.find() || (value.contains("true")) || (value.contains("false"))) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c),
								apiUtilities.getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__EnablePromptInputDialog__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c),
								apiUtilities.getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__EnablePromptInputDialog__c), value);
			}
			break;
		case "PROMPT DAILOG HEADER":
			finalPayload = String
					.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c), filterClause),
							String.valueOf(SObjectAPIs.GNT__PromptDailogHeader__c), value);
			break;
		case "PROMPT DIALOG TEXT":
			finalPayload = String
					.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c), filterClause),
							String.valueOf(SObjectAPIs.GNT__PromptDialogText__c), value);
			break;
		case "HIDE FOR CONTEXT":
			finalPayload = String
					.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c), filterClause),
							String.valueOf(SObjectAPIs.GNT__HideForContext__c), value);
			break;
		case "STANDARD ACTION":
			finalPayload = String
					.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c), filterClause),
							String.valueOf(SObjectAPIs.GNT__StandardAction__c), value);
			break;
		case "ACTION NAME":
			finalPayload = String
					.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c), filterClause),
							String.valueOf(SObjectAPIs.Name), value);
			break;
		case "HIDE FOR USER":
			finalPayload = String
					.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__PageLayoutActionConfig__c), filterClause),
							String.valueOf(SObjectAPIs.GNT__HideForUser__c), value);
			break;
		}
		System.out.println(finalPayload);
		return finalPayload;
	}

	/**
	 * setup configuration for page tabs
	 * 
	 * @param fieldLabel
	 * @param value
	 * @param filterClause
	 * @return
	 */
	public String setPageTabConfig(String fieldLabel, String value, String filterClause) {
		String finalPayload = null;
		Pattern p = Pattern.compile("([0-9])");
		Matcher m = p.matcher(value);
		switch (fieldLabel.toUpperCase()) {
		case "HIDE FOR CONTEXT":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__TabConfig__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__TabConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__HideForContext__c), value);
			break;
		case "SORT ORDER":
			if (m.find() || (value.contains("true")) || (value.contains("false"))) {
				finalPayload = String.format(
						payloadForIntValue, String.valueOf(SObjectAPIs.GNT__TabConfig__c), apiUtilities
								.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__TabConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__SortOrder__c), value);
			} else {
				finalPayload = String.format(
						payloadForStringValue, String.valueOf(SObjectAPIs.GNT__TabConfig__c), apiUtilities
								.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__TabConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__SortOrder__c), value);
			}
			break;
		}
		System.out.println(finalPayload);
		return finalPayload;
	}
}
