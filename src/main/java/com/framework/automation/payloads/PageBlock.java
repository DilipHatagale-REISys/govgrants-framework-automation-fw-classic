package com.framework.automation.payloads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PageBlock {
	private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
	private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";
	private ApiUtilities apiUtilities = new ApiUtilities();

	/**
	 * Set pay load for page Block main page
	 * 
	 * @param fieldLabel
	 * @param value
	 * @param filterClause
	 * @return
	 */
	public String setPageBlockConfig(String fieldLabel, String value, String filterClause) {
		String finalPayload = null;
		Pattern p = Pattern.compile("([0-9])");
		Matcher m = p.matcher(value);
		switch (fieldLabel.toUpperCase()) {
		case "IS ACTIVE":
			if (m.find() || (value.contains("true")) || (value.contains("false"))) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c),
								apiUtilities.getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__IsActive__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c),
								apiUtilities.getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__IsActive__c), value);
			}
			break;
		case "PAGE BLOCK TITLE":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__PageBlockTitle__c), value);
			break;
		case "SORT ORDER":
			if (m.find() || (value.contains("true")) || (value.contains("false"))) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c),
								apiUtilities.getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__SortOrder__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c),
								apiUtilities.getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__SortOrder__c), value);
			}
			break;
		case "HELP TEXT":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__HelpText__c), value);
			break;
		case "HEADER INSTRUCTION TEXT":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__HeaderInstructionText__c), value);
			break;
		case "SKIP FOR EXPORT":
			finalPayload = String.format(
					payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__SkipForExport__c), value);
			break;
		case "TOTAL FIELDS PER ROW":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__BodyColumns__c), value);
			break;
		case "HIDE FOR CONTEXT":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__HideForContext__c), value);
			break;
		case "HIDE FOR USER":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__HideForUser__c), value);
			break;
		case "HIDE FOR PROFILE":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__HideForProfile__c), value);
			break;
		case "OPERATOR":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__Operator__c), value);
			break;
		case "HIDE DECISION FIELD":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__HideDecisionField__c), value);
			break;
		case "FLEX TABLE NAME":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageBlockConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__FlexTableName__c), value);
			break;
		}
		System.out.println(finalPayload);
		return finalPayload;
	}

	/**
	 * Set pay load for page Block Rule main page
	 * 
	 * @param fieldLabel
	 * @param value
	 * @param filterClause
	 * @return
	 */
	public String setPageBlockRuleConfig(String fieldLabel, String value, String filterClause) {
		String finalPayload = null;
		switch (fieldLabel.toUpperCase()) {
		case "HIDE FOR USER":
			finalPayload = String
					.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageAttachmentConfig__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__PageAttachmentConfig__c), filterClause),
							String.valueOf(SObjectAPIs.GNT__HideForUser__c), value);
			break;
		}
		System.out.println(finalPayload);
		return finalPayload;
	}
}
