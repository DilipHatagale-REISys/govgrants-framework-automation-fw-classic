package com.framework.automation.payloads;

import eyethink.automation.bots.controller.CoreHandlers;

public class CustomAppConfig {
	private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
	private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";
	private ApiUtilities apiUtilities;
	CoreHandlers reiDriver;

	public CustomAppConfig(CoreHandlers reiDriver) {
		this.reiDriver = reiDriver;
		apiUtilities = new ApiUtilities(reiDriver);
	}

	/**
	 * Handles Custom App level configuration
	 * 
	 * @param fieldLabel
	 *            : Name of the field. Name of the API. Main phase name: eg;
	 *            GrantorHome
	 * @param value:
	 *            Parameter that we want to change
	 * @param filterClause:
	 *            filter clause to get the specific id
	 * @return: payload
	 */
	public String setCustomAppConfig(String fieldLabel, String value, String filterClause) {
		String finalPayload = null;
		switch (fieldLabel.toUpperCase()) {
		case "RENDER EXPRESSION JSON":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__CustomApp__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__CustomApp__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__RenderExpressionJSON__c), value);
			break;
		case "LABEL":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__CustomApp__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__CustomApp__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__Label__c), value);
			break;
		case "DEFAULT THEME NAME":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__CustomApp__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__CustomApp__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__DefaultThemeName__c), value);
			break;
		case "AVAILABLE FOR PROFILES":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__CustomApp__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__CustomApp__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__AvailableForProfiles__c), value);
			break;
		case "ACTIVE":
			finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__CustomApp__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__CustomApp__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__Active__c), value);
			break;
		case "URL":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__CustomApp__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__CustomApp__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__URL__c), value);
			break;
		case "SEQUENCE":
			finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__CustomApp__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__CustomApp__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
			break;
		}
		System.out.println("method for finalpayload " + finalPayload);
		return finalPayload;
	}

}