package com.framework.automation.payloads;

public class FlexTable {
    private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
    private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";
    private String payloadForBoolean = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%b}\"}";
    private ApiUtilities apiUtilities;

    public FlexTable() {
        apiUtilities = new ApiUtilities();
    }

    /**
     * Handles Accordian Content level configuration
     *
     * @param fieldLabel    : Name of the field. Name of the API.
     *                      Main phase name: eg; GrantorHome
     * @param value:        Parameter that we want to change
     * @param filterClause: filter clause to get the specific id
     * @return: payload
     */
    public String setFlexTableListFieldConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
            case "LABEL":
                finalPayload = String.format(payloadForStringValue,
                        String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c),
                        apiUtilities.getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__Label__c), value);
                break;
            case "FILTER CLAUSE":
                finalPayload = String.format(payloadForStringValue,
                        String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c),
                        apiUtilities.getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__FilterClause__c), value);
                break;
            case "HELP TEXT":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__HelpText__c), value);
                break;
            case "FIELD LABEL OVERRIDE":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__FieldLabelOverride__c), value);
                break;
            case "ENABLE TOTAL":
                finalPayload = String
                        .format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__EnableTotal__c), value);
                break;
            case "HIDE CELL JSON":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__HideCellJSON__c), value);
                break;
            case "READ ONLY CELL JSON":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__ReadOnlyCellJSON__c), value);
                break;
            case "ENABLE ROW GROUPING":
                finalPayload = String
                        .format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__EnableRowGrouping__c), value);
                break;
            case "HIDE GROUPING COLUMN":
                finalPayload = String
                        .format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__HideGroupingColumn__c), value);
                break;
            case "ENABLE OVER ALL TOTAL":
                finalPayload = String
                        .format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__EnableOverAllTotal__c), value);
                break;
            case "ENABLE SUB TOTAL":
                finalPayload = String
                        .format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__EnableSubTotal__c), value);
                break;
            case "STYLE ATTRIBUTE":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__StyleAttribute__c), value);
                break;
            case "STYLECLASS":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__StyleClass__c), value);
                break;
            case "ACTIVE ?":
                finalPayload = String.format(payloadForIntValue,
                        String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c),
                        apiUtilities.getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__IsActive__c), value);
                break;
            case "SHOW IN PDF":
                finalPayload = String.format(payloadForIntValue,
                        String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c),
                        apiUtilities.getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__ShowInPDF__c), value);
                break;
            case "HIDE COLUMN JSON":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__HideColumnJSON__c), value);
                break;
            case "READ ONLY COLUMN JSON":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__ReadOnlyColumnJSON__c), value);
                break;
            case "FORMULA":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__Formula__c), value);
                break;
            case "FORMULA JSON":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__FormulaJSON__c), value);
                break;
            case "FIELD WIDTH(%)":
                finalPayload = String
                        .format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__FieldWidth__c), value);
                break;
            case "IS MASTER VIEW":
                finalPayload = String.format(payloadForIntValue,
                        String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c),
                        apiUtilities.getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__IsMasterView__c), value);
                break;
            case "DEFAULT ?":
                finalPayload = String.format(payloadForIntValue,
                        String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c),
                        apiUtilities.getComponentCoreFieldId(
                                String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__IsDefault__c), value);
                break;
            case "DISPLAY FIELD":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__DisplayFields__c), value);
                break;
            case "ENABLE EDIT DISPLAY FIELD":
                finalPayload = String
                        .format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__EnableEditDisplayField__c), value);
                break;
            case "DEFAULT VALUE":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__DefaultValue__c), value);
                break;
            case "RENDER TYPE":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__RenderType__c), value);
                break;
            case "FIELD WIDTH ENHANCED":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__FieldWidthEnhanced__c), value);
                break;
            case "ENABLE COLUMN SUBTOTAL PERCENTAGE CHANGE":
                finalPayload = String
                        .format(payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__EnableColumnSubtotalPercentage__c), value);
                break;
            case "COLUMN SUBTOTAL PERCENTAGE JSON":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(
                                        String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__ColumnSubtotalPercentageJSON__c), value);
                break;
            case "SHOW LINK AS TEXT":
                finalPayload = String
                        .format(payloadForBoolean, String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c),
                                apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableDetailConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__ShowLinkAsText__c), Boolean.parseBoolean(value));
                break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }

    /**
     * setup configuration for main flex table
     *
     * @param fieldLabel
     * @param value
     * @param filterClause
     * @return
     */
    public String setFlexTableFieldConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
            case "ENABLE EXPORT":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableExport__c), value);
                break;
            case "ENABLE EXPORT (PDF)":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableExport__c), value);
                break;
            case "ENABLE EXPORT (XLS / CSV)":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableExportXls__c), value);
                break;
            case "ENABLE QUICK SEARCH":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableQuickSearch__c), value);
                break;
            case "ENABLE RECORD SELECTION":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableRecordSelection__c), value);
                break;
            case "ENABLE TOTAL ROW":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableTotalRow__c), value);
                break;
            case "ENABLE TOTAL RECORDS COUNT":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableTotalRecordsCount__c), value);
                break;
            case "ENABLE FILTER":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableFilter__c), value);
                break;
            case "DISABLE MENU":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__DisableMenu__c), value);
                break;
            case "DISPLAY FIELD NAMES":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__FieldNames__c), value);
                break;
            case "TOTAL ROW LABEL":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__TotalRowLabel__c), value);
                break;
            case "ENABLE AUTO INDEX":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableAutoIndex__c), value);
                break;
            case "FILTER CRITERIA":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__FilterCriteria__c), value);
                break;
            case "HEADER HELP TEXT":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__HeaderDescription__c), value);
                break;
            case "RECORD SELECTION COLUMN POSITION":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__RecordSelectionColumnPosition__c), value);
                break;
            case "HEADER INSTRUCTION":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__SubHeaderText__c), value);
                break;
            case "ENABLE HELP":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableHelp__c), value);
                break;
            case "ENABLE PAGE SIZE":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnablePageSize__c), value);
                break;
            case "ENABLE PAGINATION":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnablePagination__c), value);
                break;
            case "DEFAULT PAGE SIZE":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__DefaultPageSize__c), value);
                break;
            case "SKIP FIELDS FOR EXPORT":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__SkipFieldsForExport__c), value);
                break;
            case "HEADER":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__Header__c), value);
                break;
            case "PDF RENDER TYPE":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__PDFRenderType__c), value);
                break;
            case "SHOW HEADER PANEL":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__ShowHeaderPanel__c), value);
                break;
            case "ENABLE DATA IMPORT/EXPORT":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableDataImportExport__c), value);
                break;
            case "HIDE COLUMNS":
                finalPayload = String
                        .format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c),
                                apiUtilities.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                                String.valueOf(SObjectAPIs.GNT__HideColumnsText__c), value);
                break;
            case "ORDER BY":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__OrderBy__c), value);
                break;
            case "SORT DIRECTION":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__Sort_Direction__c), value);
                break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }

    /**
     * setup configuration for flex table action
     *
     * @param fieldLabel
     * @param value
     * @param filterClause
     * @return
     */
    public String setFlexTableActionConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
            case "ACTION BEHAVIOR":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__ActionBehavior__c), value);
                break;
            case "REFRESH BEHAVIOR":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__RefreshBehavior__c), value);
                break;
            case "WHERE TO OPEN ?":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__WhereToOpen__c), value);
                break;
            case "SEQUENCE":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
                break;
            case "BUTTON HELP TEXT":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__ButtonHelpText__c), value);
                break;
            case "ACTION URL":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__ActionURL__c), value);
                break;
            case "ICON CSS":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__IconCSS__c), value);
                break;
            case "LOCATION":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__Location__c), value);
                break;
            case "HEADER ACTION DISPLAY TYPE":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__HeaderActionDisplayType__c), value);
                break;
            case "SHOW CONFIRMATION BOX":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__ShowConfirmationBox__c), value);
                break;
            case "CONFIRMATION MESSAGE":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__ConfirmationMessage__c), value);
                break;
            case "MODAL TITLE":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__ModalTitle__c), value);
                break;
            case "HIDE FOR PROFILE":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__HideForProfile__c), value);
                break;
            case "HIDE FOR USER":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__HideForUser__c), value);
                break;
            case "HIDE OPERATOR":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__HideOperator__c), value);
                break;
            case "HIDE EXPRESSION JSON":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__HideExpressionJSON__c), value);
                break;
            case "ACTION URL LONG":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__ActionURLLong__c), value);
                break;
            case "EDITABLE ROWS":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EditableRows__c), value);
                break;
            case "SINGLE ROW EDIT BEHAVIOR":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__SingleRowEditBehavior__c), value);
                break;
            case "ACTION NAME":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.Name), value);
                break;
            case "ENABLE PARENT HIDE LOGIC":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__EnableParentHideLogic__c), value);
                break;
            case "HIDE DECISION FIELD":
                finalPayload = String.format(
                        payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__HideDecisionField__c), value);
                break;
            case "MODAL WIDTH":
                finalPayload = String.format(
                        payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableAction__c), apiUtilities
                                .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableAction__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__ModalWidth__c), value);
                break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }

    /**
     * setup configuration for flex table action with Sobject
     *
     * @param fieldLabel
     * @param value
     * @param filterClause
     * @return
     */
    public String setFlexTableActionConfigSobject(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
            case "HIDE FOR PROFILE":
                finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c),
                        apiUtilities.getComponentCoreFieldIdForContextObjects(
                                String.valueOf(SObjectAPIs.GNT__DataTableAction__c),
                                String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__HideForProfile1__c), value);
                break;
            case "HIDE FOR USER":
                finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c),
                        apiUtilities.getComponentCoreFieldIdForContextObjects(
                                String.valueOf(SObjectAPIs.GNT__DataTableAction__c),
                                String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__HideForUser__c), value);
                break;
            case "HIDE FOR CONTEXT":
                finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c),
                        apiUtilities.getComponentCoreFieldIdForContextObjects(
                                String.valueOf(SObjectAPIs.GNT__DataTableAction__c),
                                String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__HideForContext__c), value);
                break;
            case "HIDE OPERATOR":
                finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c),
                        apiUtilities.getComponentCoreFieldIdForContextObjects(
                                String.valueOf(SObjectAPIs.GNT__DataTableAction__c),
                                String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__HideOperator__c), value);
                break;
            case "HIDE DECISION EXPRESSION":
                finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c),
                        apiUtilities.getComponentCoreFieldIdForContextObjects(
                                String.valueOf(SObjectAPIs.GNT__DataTableAction__c),
                                String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__HideDecisionExpression__c), value);
                break;
            case "HIDE DECISION FIELD":
                finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c),
                        apiUtilities.getComponentCoreFieldIdForContextObjects(
                                String.valueOf(SObjectAPIs.GNT__DataTableAction__c),
                                String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__HideDecisionField__c), value);
                break;
            case "HIDE EXPRESSION JSON":
                finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c),
                        apiUtilities.getComponentCoreFieldIdForContextObjects(
                                String.valueOf(SObjectAPIs.GNT__DataTableAction__c),
                                String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__HideExpressionJSON__c), value);
                break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }
}