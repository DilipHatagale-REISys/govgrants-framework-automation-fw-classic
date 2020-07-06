package com.framework.automation.payloads;

public class DynamicForm {
    private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
    private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";
    private ApiUtilities apiUtilities;

    public DynamicForm() {
        apiUtilities = new ApiUtilities();
    }

    /**
     * Handles Dynamic Form capture level configuration
     *
     * @param fieldLabel    : Name of the field. Name of the API.
     *                      Main phase name: eg; GrantorHome
     * @param value:        Parameter that we want to change
     * @param filterClause: filter clause to get the specific id
     * @return: payload
     */
    public String setDynamicFormCaptureFormConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
            case "FORM INSTRUCTION":
                finalPayload = String.format(payloadForStringValue,
                        String.valueOf(SObjectAPIs.GNT__CaptureForm__c),
                        apiUtilities.getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__CaptureForm__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__FormInstruction__c), value);
                break;
            case "VALIDATION BUTTON VISIBILITY":
                finalPayload = String.format(payloadForStringValue,
                        String.valueOf(SObjectAPIs.GNT__CaptureForm__c),
                        apiUtilities.getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__CaptureForm__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__ValidationButtonVisibility__c), value);
                break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }
}
