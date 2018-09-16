package com.framework.automation.payloads;

public class FlexGrid {
    private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
    private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";

    public String setFlexGridParentFlexTableConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
        case "HEADER":
            finalPayload = String.format(
                    payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), new ApiUtilities()
                            .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__Header__c), value);
            break;
        case "DISABLE MENU":
            finalPayload = String.format(
                    payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), new ApiUtilities()
                            .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__DisableMenu__c), value);
            break;
        case "ENABLE QUICK SEARCH":
            finalPayload = String.format(
                    payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), new ApiUtilities()
                            .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__EnableQuickSearch__c), value);
            break;
        case "ENABLE EXPORT":
            finalPayload = String.format(
                    payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), new ApiUtilities()
                            .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__EnableExport__c), value);
            break;
        case "DISPLAY FIELD NAMES":
            finalPayload = String.format(
                    payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), new ApiUtilities()
                            .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__FieldNames__c), value);
            break;
        case "HIDE FOR CONTEXT": // handled through context object. Specific to getting id
            finalPayload = String.format(
                    payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c), new ApiUtilities()
                            . getComponentCoreFieldIdForContextObjects(String.valueOf(SObjectAPIs.GNT__DataTableAction__c),String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__HideForContext__c), value);
            break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }
    
    public String setFlexGridParentFlexTableActionConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
        case "HIDE FOR CONTEXT": // handled through context object. Specific to getting id
            finalPayload = String.format(
                    payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c), new ApiUtilities()
                            . getComponentCoreFieldIdForContextObjects(String.valueOf(SObjectAPIs.GNT__DataTableAction__c),String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__HideForContext__c), value);
            break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }
}
