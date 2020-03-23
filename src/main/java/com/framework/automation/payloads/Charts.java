package com.framework.automation.payloads;

public class Charts {
    private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
    private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";
    private ApiUtilities apiUtilities;

    public Charts() {
        apiUtilities = new ApiUtilities();
    }

    /**
     * Handles Charts level configuration
     *
     * @param fieldLabel    : Name of the field. Name of the API.
     *                      Main phase name: eg; GrantorHome
     * @param value:        Parameter that we want to change
     * @param filterClause: filter clause to get the specific id
     * @return: payload
     */
    public String setChartsFieldConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
            case "TITLE":
                finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                        apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__Title__c), value);
                break;
            case "PHASE CONFIG":
                finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                        apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), value);
                break;
            case "ACTIVE":
                finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                        apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__Active__c), value);
                break;
            case "CHART TYPE":
                finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                        apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__ChartType__c), value);
                break;
            case "Y-AXIS LABEL":
                finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                        apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__YAxisLabel__c), value);
                break;
            case "DISABLE LEGEND":
                finalPayload = String
                        .format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__DisableLegend__c), value);
                break;
            case "DATA TABLE QUERY(FOR ALL DATA)":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__DataTableQueryForAllData__c), value);
                break;
            case "DATA TABLE QUERY(FOR SELECTED DATA)":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__DataTableQueryForSelectedData__c), value);
                break;
            case "Y AXIS PREFIX":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__YAxisPrefix__c), value);
                break;
            case "X AXIS PREFIX":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__XAxisPrefix__c), value);
                break;
            case "Z-AXIS PREFIX":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__ZAxisPrefix__c), value);
                break;
            case "Y AXIS SUFFIX":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__YAxisSuffix__c), value);
                break;
            case "X AXIS SUFFIX":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__XAxisSuffix__c), value);
                break;
            case "Z-AXIS SUFFIX":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__ZAxisSuffix__c), value);
                break;
            case "X-AXIS LABEL":
                finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                        apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__XAxisLabel__c), value);
                break;
            case "Z-AXIS LABEL":
                finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                        apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__ZAxisLabel__c), value);
                break;
            case "ALL DATA TABLE HEADER":
                finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                        apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__AllDataTableHeader__c), value);
                break;
            case "DATA TABLE HEADER":
                finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                        apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__DataTableHeader__c), value);
                break;
            case "Y FORMATTED NUMBER":
                finalPayload = String.format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__ChartConfig__c),
                        apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__ChartConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__YFormattedNumber__c), value);
                break;
        }
        System.out.println("method for finalpayload " + finalPayload);
        return finalPayload;
    }

    /**
     * Handles Charts Details level configuration
     *
     * @param fieldLabel    : Name of the field. Name of the API.
     *                      Main phase name: eg; GrantorHome
     * @param value:        Parameter that we want to change
     * @param filterClause: filter clause to get the specific id
     * @return: payload
     */
    public String setChartDetailsConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
            case "ALL DATA TABLE HEADER":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__ChartDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__AllDataTableHeader__c), value);
                break;
            case "DISABLE LEGEND":
                finalPayload = String
                        .format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__ChartDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__ChartDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__DisableLegend__c), value);
                break;
            case "X-AXIS LABEL":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__ChartDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__XAxisLabel__c), value);
                break;
            case "X-AXIS PREFIX":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__ChartDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__XAxisPrefix__c), value);
                break;
            case "X FORMATTED NUMBER":
                finalPayload = String
                        .format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__ChartDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__ChartDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__XFormattedNumber__c), value);
                break;
            case "X AXIS SUFFIX":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ChartDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__ChartDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__XAxisSuffix__c), value);
                break;
        }
        System.out.println("method for finalpayload " + finalPayload);
        return finalPayload;
    }
}
