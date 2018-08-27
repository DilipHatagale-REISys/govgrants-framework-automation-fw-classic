package com.framework.automation.payloads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.framework.automation.projectmanager.SetUpConfiguration;

public class FlexTable {
    private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
    private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";

    /**
     * Handles Accordian Content level configuration
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
    public String setFlexTableListFieldConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        Pattern p = Pattern.compile("([0-9])");
        Matcher m = p.matcher(value);
        switch (fieldLabel.toUpperCase()) {
        case "LABEL":
            if (m.find()) {
                finalPayload = String.format(payloadForIntValue,
                        String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c),
                        new ApiUtilities().getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__Label__c), value);
            } else {
                finalPayload = String.format(payloadForStringValue,
                        String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c),
                        new ApiUtilities().getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__Label__c), value);
            }
        }
        System.out.println(finalPayload);
        return finalPayload;
    }
    
    /**
     * setup configuration for main flex table
     * @param fieldLabel
     * @param value
     * @param filterClause
     * @return
     */
    public String setFlexTableFieldConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        Pattern p = Pattern.compile("([0-9])");
        Matcher m = p.matcher(value);
        switch (fieldLabel.toUpperCase()) {
        case "ENABLE EXPORT":
            if (m.find() || (value.contains("true")) || (value.contains("false"))) {
                finalPayload = String.format(payloadForIntValue,
                        String.valueOf(SObjectAPIs.GNT__DataTableConfig__c),
                        new ApiUtilities().getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableExport__c), value);
            } else {
                finalPayload = String.format(payloadForStringValue,
                        String.valueOf(SObjectAPIs.GNT__DataTableConfig__c),
                        new ApiUtilities().getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableExport__c), value);
            }
            break;
        case "ENABLE QUICK SEARCH":
            if (m.find() || (value.contains("true")) || (value.contains("false"))) {
                finalPayload = String.format(payloadForIntValue,
                        String.valueOf(SObjectAPIs.GNT__DataTableConfig__c),
                        new ApiUtilities().getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableQuickSearch__c), value);
            } else {
                finalPayload = String.format(payloadForStringValue,
                        String.valueOf(SObjectAPIs.GNT__DataTableConfig__c),
                        new ApiUtilities().getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableQuickSearch__c), value);
            }
            break;
        case "ENABLE RECORD SELECTION":
            if (m.find() || (value.contains("true")) || (value.contains("false"))) {
                finalPayload = String.format(payloadForIntValue,
                        String.valueOf(SObjectAPIs.GNT__DataTableConfig__c),
                        new ApiUtilities().getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableRecordSelection__c), value);
            } else {
                finalPayload = String.format(payloadForStringValue,
                        String.valueOf(SObjectAPIs.GNT__DataTableConfig__c),
                        new ApiUtilities().getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableQuickSearch__c), value);
            }
            break;
        case "ENABLE TOTAL ROW":
            if (m.find() || (value.contains("true")) || (value.contains("false"))) {
                finalPayload = String.format(payloadForIntValue,
                        String.valueOf(SObjectAPIs.GNT__DataTableConfig__c),
                        new ApiUtilities().getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableTotalRow__c), value);
            } else {
                finalPayload = String.format(payloadForStringValue,
                        String.valueOf(SObjectAPIs.GNT__DataTableConfig__c),
                        new ApiUtilities().getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableTotalRow__c), value);
            }
            break;
        case "ENABLE TOTAL RECORDS COUNT":
            if (m.find() || (value.contains("true")) || (value.contains("false"))) {
                finalPayload = String.format(payloadForIntValue,
                        String.valueOf(SObjectAPIs.GNT__DataTableConfig__c),
                        new ApiUtilities().getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableTotalRecordsCount__c), value);
            } else {
                finalPayload = String.format(payloadForStringValue,
                        String.valueOf(SObjectAPIs.GNT__DataTableConfig__c),
                        new ApiUtilities().getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableTotalRecordsCount__c), value);
            }
            break;
        }
        System.out.println(finalPayload);
        return finalPayload;
        
    }
}
