package com.framework.automation.payloads;

import eyethink.automation.bots.controller.CoreHandlers;

public class Forms {
	private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
	private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";
	private ApiUtilities apiUtilities;
	CoreHandlers reiDriver;

	public Forms(CoreHandlers reiDriver) {
		this.reiDriver=reiDriver;
		apiUtilities = new ApiUtilities(reiDriver);
	}

	/**
	 *   Handles Forms level configuration
	 * @param fieldLabel
	 * @param value
	 * @param filterClause
	 * @return
	 */
	public String setFormsFieldConfig(String fieldLabel, String value, String filterClause) {
		String finalPayload = null;
		switch (fieldLabel.toUpperCase()) {
		case "SKIP FORM DOWNLOAD":
			finalPayload = String.format(
					payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PageTemplate__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageTemplate__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__SkipFormDownload__c), value);
			break;
		case "VERSION":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PageTemplate__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageTemplate__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__Version__c), value);
			break;
		}
		System.out.println("method for finalpayload " + finalPayload);
		return finalPayload;
	}
}
