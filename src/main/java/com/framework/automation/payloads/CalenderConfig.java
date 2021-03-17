package com.framework.automation.payloads;

public class CalenderConfig {
	private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
	private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";
	private ApiUtilities apiUtilities;

	public CalenderConfig() {
		apiUtilities = new ApiUtilities();
	}

	/**
	 * Handles Calender level configuration
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
	public String setCalenderConfig(String fieldLabel, String value, String filterClause) {
		String finalPayload = null;
		switch (fieldLabel.toUpperCase()) {
		case "COLOR CODE":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__CalendarConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__CalendarConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__ColorCode__c), value);
			break;
		case "ACTIVE":
			finalPayload = String.format(
					payloadForIntValue, String.valueOf(SObjectAPIs.GNT__CalendarConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__CalendarConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__Active__c), value);
			break;
			case "DATE FIELDS":
				finalPayload = String.format(
						payloadForStringValue, String.valueOf(SObjectAPIs.GNT__CalendarConfig__c), apiUtilities
								.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__CalendarConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__DateFields__c), value);
				break;
			case "FILTER CLAUSE":
				finalPayload = String.format(
						payloadForStringValue, String.valueOf(SObjectAPIs.GNT__CalendarConfig__c), apiUtilities
								.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__CalendarConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__FilterClause__c), value);
				break;
		}
		System.out.println("method for finalpayload " + finalPayload);
		return finalPayload;
	}

}
