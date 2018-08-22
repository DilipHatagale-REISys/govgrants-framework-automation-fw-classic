package com.framework.automation.projectmanager;

import com.automation.rei.controller.EnvironmentFetcher;
import com.automation.rei.webservices.RestfulWebServices;
import com.google.gson.JsonObject;
import com.jayway.restassured.response.Response;

public class SetUpConfiguration {
    RestfulWebServices apiCall = new RestfulWebServices();
    JsonObject sObjectConfig;
    JsonObject fieldConfig;
    private static String endPoint = EnvironmentFetcher.environment;
    private String defaultRetrieveEndPoint = "https://ggptest5-dev-ed.my.salesforce.com/services/apexrest/frameworkAPIRetrieve";
    private String payload = "{\"sObjectAPIName\" : \"%s\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"%s\\\",\\\"%s\\\":\\\"%s\\\"}\"}";

    /**
     * create json object for different objects
     * 
     * @param fieldName:
     *            Name of the relevant field in the component core field
     * @param componentName:
     *            Name of the component that we want to configure
     * @param value:the
     *            value we want to modify
     * @return
     */
    /**
     * 
     * @param fieldLabel: Label/name of API
     * @param componentName: Name of component like phases , side bar
     * @param ComponentCoreFieldName: Main filed like GrantorHome
     * @param SubCCFieldName: Sub core field like My tasks in accordian header
     * @param value : value that we want to use as variable and test
     * @return
     */
    public String getConfigJson(String fieldLabel, String componentName, String ComponentCoreFieldName,
            String SubCCFieldName, String value) {
        String stringPayload = null;
        switch (componentName.toUpperCase()) {
        case "PHASES":
            stringPayload = getPhasesFieldConfig(fieldLabel, ComponentCoreFieldName, value,
                    getFilterClause(componentName, ComponentCoreFieldName, SubCCFieldName));
            break;
        case "ACCORDIAN HEADER":
            stringPayload = setAccordianFieldConfig(fieldLabel, ComponentCoreFieldName, value,
                    getFilterClause(componentName, ComponentCoreFieldName, SubCCFieldName));
            break;
        case "ACCORDIAN CONTENT":
            stringPayload = setAccordianContentFieldConfig(fieldLabel, ComponentCoreFieldName, value,
                    getFilterClause(componentName, ComponentCoreFieldName, SubCCFieldName));
            break;
        }
        return stringPayload;
    }

    /**
     * Handles Accordian configuration
     * @param fieldLabel : Name of the field. Name of the API.
     * @param ComponentCoreFieldName: Main phase name: eg; GrantorHome
     * @param value: Parameter that we want to change
     * @param filterClause: filter clause to get the specific id
     * @return: payload
     */
    private String setAccordianFieldConfig(String fieldLabel, String ComponentCoreFieldName, String value,
            String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
        case "NAME":
            finalPayload = String.format(payload, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                    getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c), ComponentCoreFieldName,
                            filterClause),
                    String.valueOf(SObjectAPIs.Name), value);
            break;
        case "ACTIVE":
            finalPayload = String
                    .format(payload, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                            getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                                    ComponentCoreFieldName, filterClause),
                            String.valueOf(SObjectAPIs.GNT__Active__c), value);
            break;
        case "ICON CSS":
            finalPayload = String
                    .format(payload, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                            getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                                    ComponentCoreFieldName, filterClause),
                            String.valueOf(SObjectAPIs.GNT__IconCSS__c), value);
            break;
        case "INTERNAL UNIQUE ID":
            finalPayload = String
                    .format(payload, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                            getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                                    ComponentCoreFieldName, filterClause),
                            String.valueOf(SObjectAPIs.GNT__InternalUniqueID__c), value);
            break;
        case "PHASE CONFIG":
            finalPayload = String
                    .format(payload, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                            getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                                    ComponentCoreFieldName, filterClause),
                            String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), value);
            break;
        case "SEQUENCE":
            finalPayload = String
                    .format(payload, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                            getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                                    ComponentCoreFieldName, filterClause),
                            String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
            break;
        case "TYPE":
            finalPayload = String
                    .format(payload, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                            getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                                    ComponentCoreFieldName, filterClause),
                            String.valueOf(SObjectAPIs.GNT__Type__c), value);
            break;
        }
        return finalPayload;
    }

    /**
     * Handles Accordian Content level configuration
     * @param fieldLabel : Name of the field. Name of the API.
     * @param ComponentCoreFieldName: Main phase name: eg; GrantorHome
     * @param value: Parameter that we want to change
     * @param filterClause: filter clause to get the specific id
     * @return: payload
     */
    private String setAccordianContentFieldConfig(String fieldLabel, String ComponentCoreFieldName, String value,
            String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
        case "LABEL":
            finalPayload = String.format(payload, String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
                    getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionContent__c),
                            ComponentCoreFieldName, filterClause),
                    String.valueOf(SObjectAPIs.Name), value);
            break;
        }
        return finalPayload;
    }

    /**
     * Handles phase level configuration
     * @param fieldLabel : Name of the field. Name of the API.
     * @param ComponentCoreFieldName: Main phase name: eg; GrantorHome
     * @param value: Parameter that we want to change
     * @param filterClause: filter clause to get the specific id
     * @return: payload
     */
    private String getPhasesFieldConfig(String fieldLabel, String ComponentCoreFieldName, String value,
            String filterClause) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
        case "TAB ICON CSS":
            finalPayload = String
                    .format(payload, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
                            getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
                                    ComponentCoreFieldName, filterClause),
                            String.valueOf(SObjectAPIs.GNT__TabIconCSS__c), value);
            break;
        case "ABBREVIATION":
            finalPayload = String
                    .format(payload, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
                            getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
                                    ComponentCoreFieldName, filterClause),
                            String.valueOf(SObjectAPIs.GNT__Abbreviation__c), value);
            break;
        case "BODY FLEX TABLE":
            finalPayload = String
                    .format(payload, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
                            getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
                                    ComponentCoreFieldName, filterClause),
                            String.valueOf(SObjectAPIs.GNT__BodyTable__c), value);
            break;
        case "CONFIG: CUSTOM APP":
            finalPayload = String
                    .format(payload, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
                            getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
                                    ComponentCoreFieldName, filterClause),
                            String.valueOf(SObjectAPIs.GNT__CustomAppConfig__c), value);
            break;
        case "SIDEBAR COMPONENT SEQUENCE":
            finalPayload = String
                    .format(payload, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
                            getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
                                    ComponentCoreFieldName, filterClause),
                            String.valueOf(SObjectAPIs.GNT__SidebarComponentSequence__c), value);
            break;
        }
        return finalPayload;
    }

    /**
     * get Id based on component api and field name
     * 
     * @param ComponentAPI
     * @param ComponentCoreFieldName
     * @return
     */
    private String getComponentCoreFieldId(String ComponentAPI, String ComponentCoreFieldName, String filterClause) {
        Response response = apiCall.postCall(
                getPayLaodForIdRetrieval(ComponentAPI, ComponentCoreFieldName, filterClause), null,
                defaultRetrieveEndPoint, "Authorization", "Bearer " + ProjectWebServices.tokenString, null);
        String[] splittedStringForId = response.body().asString().split(":");
        String iD = splittedStringForId[4].substring(2, 20);
        return iD;
    }

    /**
     * create payload for getting ID API call
     * 
     * @param ComponentAPI
     * @param ComponentCoreFieldName
     * @return
     */
    private JsonObject getPayLaodForIdRetrieval(String ComponentAPI, String ComponentCoreFieldName,
            String filterClause) {
        sObjectConfig = new JsonObject();
        sObjectConfig.addProperty("sObjectAPIName", ComponentAPI);
        sObjectConfig.addProperty("fields", "Id");
        sObjectConfig.addProperty("filterClause", filterClause + "'");
        System.out.println("json is "+sObjectConfig);
        return sObjectConfig;
    }

    private String getFilterClause(String componentName, String ComponentCoreFieldName, String name) {
        String filterClause = null;
        switch (componentName.toUpperCase()) {
        case "PHASES":
            filterClause = "Name=" + "'" + ComponentCoreFieldName;
            break;
        case "ACCORDIAN HEADER":
            filterClause = String.valueOf(SObjectAPIs.GNT__PhaseConfig__r) + ".Name=" + "'" + ComponentCoreFieldName
                    +"' and Name =" + "'" + name;
            break;
        case "ACCORDIAN CONTENT":
            filterClause = String.valueOf(SObjectAPIs.GNT__AccordionSubHeader__r) + "."
                    + String.valueOf(SObjectAPIs.GNT__AccordionHeader__r) + "."
                    + String.valueOf(SObjectAPIs.GNT__PhaseConfig__r) + ".Name=" + "'" + ComponentCoreFieldName
                    +"'" +"and Name =" + "'" + name;
        }
        return filterClause;
    }
}
