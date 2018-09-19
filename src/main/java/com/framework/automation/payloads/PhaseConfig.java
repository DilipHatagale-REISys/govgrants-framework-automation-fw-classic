package com.framework.automation.payloads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PhaseConfig {
    private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
    private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";

    /**
     * Handles Phases Header level configuration
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
    public String setPhaseFieldConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
        case "AVAILABLE FOR PROFILES":
            finalPayload = String.format(
                    payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), new ApiUtilities()
                            .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__AvailableforProfiles__c), value);
            break;
        case "TAB DISPLAY LABEL":
            finalPayload = String.format(
                    payloadForStringValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), new ApiUtilities()
                            .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__TabName__c), value);
        case "SEQUENCE":
            finalPayload = String.format(
                    payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), new ApiUtilities()
                            .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
            break;
        case "TOTAL CHARTS ALLOWED":
            finalPayload = String.format(
                    payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), new ApiUtilities()
                            .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__TotalChartsAllowed__c), value);
            break;
        }
        System.out.println("method for finalpayload " + finalPayload);
        return finalPayload;
    }
}
