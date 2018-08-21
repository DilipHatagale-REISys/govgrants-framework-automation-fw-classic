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
    public String getConfigJson(String fieldLabel, String componentName, String ComponentCoreFieldName, String value) {
        String stringPayload = null;
        switch (componentName.toUpperCase()) {
        case "PHASES":
            stringPayload = setPhasesFieldConfig(fieldLabel, ComponentCoreFieldName, value);
            break;
        case "SIDEBAR":
            stringPayload = setAccordianFieldConfig(fieldLabel, ComponentCoreFieldName, value);
            break;
        }
        return stringPayload;
    }

    /**
     * Handles fields of Accordian Header
     * 
     * @param fieldLabel
     * @param id
     * @param value
     * @return
     */
    private String setAccordianFieldConfig(String fieldLabel, String ComponentCoreFieldName, String value) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
        case "NAME":
            finalPayload = String.format(payload, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                    getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                            ComponentCoreFieldName),
                    String.valueOf(SObjectAPIs.Name), value);
            System.out.println("final payload is " + finalPayload);
            break;
        case "ACTIVE":
            finalPayload = String.format(payload, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                    getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                            ComponentCoreFieldName),
                    String.valueOf(SObjectAPIs.GNT__Active__c), value);
            break;
        case "ICON CSS":
            finalPayload = String.format(payload, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                    getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                            ComponentCoreFieldName),
                    String.valueOf(SObjectAPIs.GNT__IconCSS__c), value);
            break;
        case "INTERNAL UNIQUE ID":
            finalPayload = String
                    .format(payload, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                            getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                                    ComponentCoreFieldName),
                            String.valueOf(SObjectAPIs.GNT__InternalUniqueID__c), value);
            break;
        case "PHASE CONFIG":
            finalPayload = String.format(payload, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                    getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                            ComponentCoreFieldName),
                    String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), value);
            break;
        case "SEQUENCE":
            finalPayload = String.format(payload, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                    getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                            ComponentCoreFieldName),
                    String.valueOf(SObjectAPIs.GNT__Sequence__c), value);
            break;
        case "TYPE":
            finalPayload = String.format(payload, String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                    getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__AccordionHeader__c),
                            ComponentCoreFieldName),
                    String.valueOf(SObjectAPIs.GNT__Type__c), value);
            break;
        }
        return finalPayload;
    }

    /**
     * Handle phases
     * 
     * @param fieldLabel
     * @param id
     * @param value
     * @return
     * @return
     */
    private String setPhasesFieldConfig(String fieldLabel, String ComponentCoreFieldName, String value) {
        String finalPayload = null;
        switch (fieldLabel.toUpperCase()) {
        case "TAB ICON CSS":
            finalPayload = String.format(payload, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
                    getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), ComponentCoreFieldName),
                    String.valueOf(SObjectAPIs.GNT__TabIconCSS__c), value);
            break;
        case "ABBREVIATION":
            finalPayload = String.format(payload, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
                    getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), ComponentCoreFieldName),
                    String.valueOf(SObjectAPIs.GNT__Abbreviation__c), value);
            break;
        case "BODY FLEX TABLE":
            finalPayload = String.format(payload, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
                    getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), ComponentCoreFieldName),
                    String.valueOf(SObjectAPIs.GNT__BodyTable__c), value);
            break;
        case "CONFIG: CUSTOM APP":
            finalPayload = String.format(payload, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
                    getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), ComponentCoreFieldName),
                    String.valueOf(SObjectAPIs.GNT__CustomAppConfig__c), value);
            break;
        case "SIDEBAR COMPONENT SEQUENCE":
            finalPayload = String.format(payload, String.valueOf(SObjectAPIs.GNT__PhaseConfig__c),
                    getComponentCoreFieldId(String.valueOf(SObjectAPIs.GNT__PhaseConfig__c), ComponentCoreFieldName),
                    String.valueOf(SObjectAPIs.GNT__SidebarComponentSequence__c), value);
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
    private String getComponentCoreFieldId(String ComponentAPI, String ComponentCoreFieldName) {
        Response response = apiCall.postCall(getPayLaodForIdRetrieval(ComponentAPI, ComponentCoreFieldName), null,
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
    private JsonObject getPayLaodForIdRetrieval(String ComponentAPI, String ComponentCoreFieldName) {
        sObjectConfig = new JsonObject();
        sObjectConfig.addProperty("sObjectAPIName", ComponentAPI);
        sObjectConfig.addProperty("fields", "Id");
        sObjectConfig.addProperty("filterClause", "Name='" + ComponentCoreFieldName + "'");
        return sObjectConfig;
    }
}
