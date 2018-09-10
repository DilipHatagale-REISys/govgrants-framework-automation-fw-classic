package com.framework.automation.payloads;

public class Program {
    private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
    private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";

    /**
     * Handles Program level configuration
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
    public String setProgramFieldConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
        case "STATUS":
            finalPayload = String.format(
                    payloadForStringValue, String.valueOf(SObjectAPIs.Program__c), new ApiUtilities()
                            .getComponentCoreFieldId(String.valueOf(SObjectAPIs.Program__c), filterClause),
                    String.valueOf(SObjectAPIs.Status__c), value);
            break;
        }
        System.out.println("method for finalpayload " + finalPayload);
        return finalPayload;
    }
}
