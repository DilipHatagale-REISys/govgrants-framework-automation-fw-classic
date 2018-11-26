package com.framework.automation.payloads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StepProgressBar {
	private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
	private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";
	private ApiUtilities apiUtilities = new ApiUtilities();

	/**
	 * Set pay load for step progress bar header
	 * 
	 * @param fieldLabel
	 * @param value
	 * @param filterClause
	 * @return
	 */
	public String setStepProgressBarHeaderConfig(String fieldLabel, String value, String filterClause) {
		String finalPayload = null;
		switch (fieldLabel.toUpperCase()) {
		case "RENDER FOR APPLICATION":
			finalPayload = String
					.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__StepProgressbarHeader__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__StepProgressbarHeader__c), filterClause),
							String.valueOf(SObjectAPIs.GNT__RenderforApp__c), value);
			break;
		case "RENDER FOR USER":
			finalPayload = String
					.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__StepProgressbarHeader__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__StepProgressbarHeader__c), filterClause),
							String.valueOf(SObjectAPIs.GNT__RenderforUser__c), value);
			break;
		case "COMPLETE COLOR":
			finalPayload = String
					.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__StepProgressbarHeader__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__StepProgressbarHeader__c), filterClause),
							String.valueOf(SObjectAPIs.GNT__CompleteColor__c), value);
			break;
		case "REJECT COLOR":
			finalPayload = String
					.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__StepProgressbarHeader__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__StepProgressbarHeader__c), filterClause),
							String.valueOf(SObjectAPIs.GNT__RejectColor__c), value);
			break;
		case "INCOMPLETE COLOR":
			finalPayload = String
					.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__StepProgressbarHeader__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__StepProgressbarHeader__c), filterClause),
							String.valueOf(SObjectAPIs.GNT__IncompleteColor__c), value);
			break;
		}
		System.out.println(finalPayload);
		return finalPayload;
	}

	/**
	 * Set pay load for step progress bar detail
	 * 
	 * @param fieldLabel
	 * @param value
	 * @param filterClause
	 * @return
	 */
	public String setStepProgressBarDetailConfig(String fieldLabel, String value, String filterClause) {
		String finalPayload = null;
		Pattern p = Pattern.compile("([0-9])");
		Matcher m = p.matcher(value);
		switch (fieldLabel.toUpperCase()) {
		case "HIDE FOR USERS":
			finalPayload = String
					.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__StepProgressbarDetail__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__StepProgressbarDetail__c), filterClause),
							String.valueOf(SObjectAPIs.GNT__HideForUsers__c), value);
			break;
		case "SEQUENCE":
			if (m.find()) {
				finalPayload = String
						.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__StepProgressbarDetail__c),
								apiUtilities.getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__StepProgressbarDetail__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
			} else {
				finalPayload = String
						.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__StepProgressbarDetail__c),
								apiUtilities.getComponentCoreFieldId(
										String.valueOf(SObjectAPIs.GNT__StepProgressbarDetail__c), filterClause),
								String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
			}
			break;
		case "NEGATIVE PATH":
			finalPayload = String
					.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__StepProgressbarDetail__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__StepProgressbarDetail__c), filterClause),
							String.valueOf(SObjectAPIs.GNT__NegativePath__c), value);
			break;
		case "DISPLAY VALUE":
			finalPayload = String
					.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__StepProgressbarDetail__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__StepProgressbarDetail__c), filterClause),
							String.valueOf(SObjectAPIs.Name), value);
			break;
		case "ISCREATED":
			finalPayload = String
					.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__StepProgressbarDetail__c),
							apiUtilities.getComponentCoreFieldId(
									String.valueOf(SObjectAPIs.GNT__StepProgressbarDetail__c), filterClause),
							String.valueOf(SObjectAPIs.GNT__IsCreated__c), value);
			break;
		}
		System.out.println(finalPayload);
		return finalPayload;
	}
}