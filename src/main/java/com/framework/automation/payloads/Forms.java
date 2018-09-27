package com.framework.automation.payloads;

public class Forms {
    private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
    private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";
    private ApiUtilities apiUtilities = new ApiUtilities();

    /**
     * Handles Forms level configuration
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
    public String setFormsFieldConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
        case "SKIP FORM DOWNLOAD":
            finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__PageTemplate__c),
                    apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PageTemplate__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__SkipFormDownload__c), value);
            break;
        }
        System.out.println("method for finalpayload " + finalPayload);
        return finalPayload;
    }
}
