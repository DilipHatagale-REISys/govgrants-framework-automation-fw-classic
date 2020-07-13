package com.framework.automation.payloads;

public class NameTemplateSequence {
    private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
    private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";
    private ApiUtilities apiUtilities;

    public NameTemplateSequence() {
        apiUtilities = new ApiUtilities();
    }

    /**
     * Handles configuration for name template sequence
     *
     * @param fieldLabel    : Name of the field. Name of the API.
     *                      Name template sequence name: eg;PG-343-
     * @param value:        Parameter that we want to change
     * @param filterClause: filter clause to get the specific id
     * @return: payload
     */
    public String setNameTemplateSequenceConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
            case "LAST SEQUENCE":
                finalPayload = String.format(payloadForIntValue,
                        String.valueOf(SObjectAPIs.GNT__NameTemplateSequence__c),
                        apiUtilities.getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__NameTemplateSequence__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__LastSequence__c), value);
                break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }
}
