package com.framework.automation.payloads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class FlexGrid {
    private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
    private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";
    private ApiUtilities apiUtilities;

    public FlexGrid() {
        apiUtilities = new ApiUtilities();
    }

	public String setFlexGridParentFlexTableConfig(String fieldLabel, String value, String filterClause) {
		String finalPayload = null;
		Pattern p = Pattern.compile("([0-9])");
		Matcher m = p.matcher(value);
		switch (fieldLabel.toUpperCase()) {
		case "HEADER":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__Header__c), value);
			break;
		case "DISABLE MENU":
			finalPayload = String.format(
					payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__DisableMenu__c), value);
			break;
		case "ENABLE QUICK SEARCH":
			finalPayload = String.format(
					payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__EnableQuickSearch__c), value);
			break;
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
		case "DISPLAY FIELD NAMES":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__FieldNames__c), value);
			break;
		case "HIDE FOR CONTEXT": // handled through context object. Specific to getting id
			finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c),
					apiUtilities.getComponentCoreFieldIdForContextObjects(
							String.valueOf(SObjectAPIs.GNT__DataTableAction__c),
							String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__HideForContext__c), value);
			break;
		case "ENABLE FILTER":
			finalPayload = String.format(
					payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__EnableFilter__c), value);
			break;
		case "LABEL":
			if (m.find()) {
				finalPayload = String.format(payloadForIntValue,
						String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c),
						apiUtilities.getComponentCoreFieldId(
								String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__Label__c), value);
			} else {
				finalPayload = String.format(payloadForStringValue,
						String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c),
						apiUtilities.getComponentCoreFieldId(
								String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c), filterClause),
						String.valueOf(SObjectAPIs.GNT__Label__c), value);
			}
			break;
		case "SHOW IN PDF":
			finalPayload = String.format(payloadForIntValue,
					String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c),
					apiUtilities.getComponentCoreFieldId(
							String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__ShowInPDF__c), value);
			break;
		case "IS MASTER VIEW":
			finalPayload = String.format(payloadForIntValue,
					String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c),
					apiUtilities.getComponentCoreFieldId(
							String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__IsMasterView__c), value);
			break;
		case "ACTIVE ?":
			finalPayload = String.format(payloadForIntValue,
					String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c),
					apiUtilities.getComponentCoreFieldId(
							String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__IsActive__c), value);
			break;
		case "FILTER CLAUSE":
			finalPayload = String.format(payloadForStringValue,
					String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c),
					apiUtilities.getComponentCoreFieldId(
							String.valueOf(SObjectAPIs.GNT__FlexTableFilterListViewConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__FilterClause__c), value);
			break;
		case "ENABLE TOTAL RECORDS COUNT":
			finalPayload = String.format(
					payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__EnableTotalRecordsCount__c), value);
			break;
		case "ENABLE AUTO INDEX":
			finalPayload = String.format(
					payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__EnableAutoIndex__c), value);
			break;
		case "ENABLE RECORD SELECTION":
			finalPayload = String.format(
					payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__EnableRecordSelection__c), value);
			break;
		case "FLEX GRID CONFIG NAME":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__FlexGridConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__FlexGridConfig__c), filterClause),
					String.valueOf(SObjectAPIs.Name), value);
			break;
		case "HEADER HELP TEXT":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__HeaderDescription__c), value);
			break;
		case "ENABLE PAGE SIZE":
			finalPayload = String.format(
					payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__EnablePageSize__c), value);
			break;
		case "DEFAULT PAGE SIZE":
			finalPayload = String.format(
					payloadForStringValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__DefaultPageSizeEnhanced__c), value);
			break;
		case "ENABLE HELP":
			finalPayload = String.format(
					payloadForIntValue, String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), apiUtilities
							.getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__DataTableConfig__c), filterClause),
					String.valueOf(SObjectAPIs.GNT__EnableHelp__c), value);
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

    public String setFlexGridParentFlexTableActionConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
            case "HIDE FOR CONTEXT": // handled through context object. Specific to getting id
                finalPayload = String.format(payloadForStringValue, String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c),
                        apiUtilities.getComponentCoreFieldIdForContextObjects(
                                String.valueOf(SObjectAPIs.GNT__DataTableAction__c),
                                String.valueOf(SObjectAPIs.GNT__SobjectActionConfig__c), filterClause),
                        String.valueOf(SObjectAPIs.GNT__HideForContext__c), value);
                break;
        }
        System.out.println(finalPayload);
        return finalPayload;
    }
}
