package com.framework.automation.payloads;

public class ApprovalProcess {
    private String payloadForStringValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";
    private String payloadForIntValue = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":%s}\"}";

    /**
     * setup configuration for flex table action
     * 
     * @param fieldLabel
     * @param value
     * @param filterClause
     * @return
     */
    public String setApprovalDecisionActionConfig(String fieldLabel, String value, String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
        case "HIDE ACTION":
            finalPayload = String.format(
                    payloadForStringValue, String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c), new ApiUtilities()
                            .getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__ApprovalDecisionActionConfig__c), filterClause),
                    String.valueOf(SObjectAPIs.GNT__HideAction__c), value);
        }
        System.out.println(finalPayload);
        return finalPayload;
    }
}
