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
            case "FORM NAME":
                finalPayload = String.format(payloadForStringValue,
                        String.valueOf(SObjectAPIs.GNT__CaptureForm__c),
                        apiUtilities.getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__CaptureForm__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__Name__c), value);
                break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }


    /**
     * Handles Dynamic Form capture section level configuration
     *
     * @param fieldLabel    : Name of the field. Name of the API.
     *                      Main phase name: eg; GrantorHome
     * @param value:        Parameter that we want to change
     * @param filterClause: filter clause to get the specific id
     * @return: payload
     */
    public String setDynamicFormCaptureSectionConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
            case "SECTION HELP TEXT":
                finalPayload = String.format(payloadForStringValue,
                        String.valueOf(SObjectAPIs.GNT__CaptureSection__c),
                        apiUtilities.getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__CaptureSection__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__SectionHelpText__c), value);
                break;
            case "SECTION INSTRUCTION":
                finalPayload = String.format(payloadForStringValue,
                        String.valueOf(SObjectAPIs.GNT__CaptureSection__c),
                        apiUtilities.getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__CaptureSection__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__SectionInstruction__c), value);
                break;
            case "SECTION NAME":
                finalPayload = String.format(payloadForStringValue,
                        String.valueOf(SObjectAPIs.GNT__CaptureSection__c),
                        apiUtilities.getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__CaptureSection__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__Name__c	), value);
                break;
            case "SECTION COLUMN":
                finalPayload = String.format(payloadForStringValue,
                        String.valueOf(SObjectAPIs.GNT__CaptureSection__c),
                        apiUtilities.getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__CaptureSection__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__SectionColumn__c	), value);
                break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }


    /**
     * Handles Dynamic Form capture item level configuration
     *
     * @param fieldLabel    : Name of the field. Name of the API.
     *                      Main phase name: eg; GrantorHome
     * @param value:        Parameter that we want to change
     * @param filterClause: filter clause to get the specific id
     * @return: payload
     */
    public String setDynamicFormCaptureItemConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
            case "QUESTION APPLICABLE ?":
                finalPayload = String.format(payloadForStringValue,
                        String.valueOf(SObjectAPIs.GNT__CaptureItem__c	),
                        apiUtilities.getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__CaptureItem__c	), filterClause),
                        String.valueOf(SObjectAPIs.GNT__QuestionApplicable__c), value);
                break;
            case "MAX SCORE":
                finalPayload = String.format(payloadForIntValue,
                        String.valueOf(SObjectAPIs.GNT__CaptureItem__c	),
                        apiUtilities.getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__CaptureItem__c	), filterClause),
                        String.valueOf(SObjectAPIs.GNT__MaxScore__c), value);
                break;
            case "QUESTION HELP TEXT":
                finalPayload = String.format(payloadForStringValue,
                        String.valueOf(SObjectAPIs.GNT__CaptureItem__c	),
                        apiUtilities.getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__CaptureItem__c	), filterClause),
                        String.valueOf(SObjectAPIs.GNT__HelpText__c	), value);
                break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }
}
