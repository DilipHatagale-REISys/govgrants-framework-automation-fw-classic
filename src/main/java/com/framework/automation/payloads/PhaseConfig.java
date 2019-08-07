package com.framework.automation.payloads;

public class PhaseConfig {
	private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
	private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";
	private ApiUtilities apiUtilities;

	public PhaseConfig() {
		apiUtilities = new ApiUtilities();
	}

	/**
	 * Handles Phases Header level configuration
	 * 
	 * @param fieldLabel : Name of the field. Name of the API.
	 * @param            value: Parameter that we want to change
	 * @param            filterClause: filter clause to get the specific id
	 * @return: payload
	 */
	public String setPhaseFieldConfig(String fieldLabel, String value, String filterClause) {
		String finalPayload = null;
		switch (fieldLabel.toUpperCase()) {
		case "AVAILABLE FOR PROFILES":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__AvailableforProfiles__c), value);
			break;
		case "TAB DISPLAY LABEL":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__TabName__c), value);
			break;
		case "SEQUENCE":
			finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
			break;
		case "TOTAL CHARTS ALLOWED":
			finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__TotalChartsAllowed__c), value);
			break;
		case "BODY BOTTOM PAGE URL":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__BodyBottomPageURL__c), value);
			break;
		case "IS PHASE":
			finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__IsPhase__c), value);
			break;
		case "DEFAULT LANDING TAB?":
			finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__SelectedByDefault__c), value);
			break;
		case "TAB ICON CSS":
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
					apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__TabIconCSS__c), value);
			break;
		}
		System.out.println("method for finalpayload " + finalPayload);
		return finalPayload;
	}

	/**
	 * Handles Phases config Sobject configuration
	 * 
	 * @param fieldLabel : Name of the field. Name of the API.
	 * @param            value: Parameter that we want to change
	 * @param            filterClause: filter clause to get the specific id
	 * @return: payload
	 */
	public String setPhaseSobjectFieldConfig(String fieldLabel, String value, String filterClause) {
		String finalPayload = null;
		switch (fieldLabel.toUpperCase()) {
			case "HIGHLIGHT PHASE?":
				finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__SObjectPhaseConfig__c),
						apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__SObjectPhaseConfig__c),
								filterClause),
						String.valueOf(SObjectAPIs.GNT__HighlightPhase__c), value);
				break;
			case "GLOBAL SEARCH LABEL":
				finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SObjectPhaseConfig__c),
						apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__SObjectPhaseConfig__c),
								filterClause),
						String.valueOf(SObjectAPIs.GNT__GlobalSearchLabel__c), value);
				break;
			case "ADD TO GLOBAL SEARCH?":
				finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__SObjectPhaseConfig__c),
						apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__SObjectPhaseConfig__c),
								filterClause),
						String.valueOf(SObjectAPIs.GNT__GlobalSearchVisibility__c), value);
				break;
			case "ADD TO RECENTLY VIEWED?":
				finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__SObjectPhaseConfig__c),
						apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__SObjectPhaseConfig__c),
								filterClause),
						String.valueOf(SObjectAPIs.GNT__RecentlyViewedVisibility__c), value);
				break;

		}
		System.out.println("method for finalpayload " + finalPayload);
		return finalPayload;
	}
}
