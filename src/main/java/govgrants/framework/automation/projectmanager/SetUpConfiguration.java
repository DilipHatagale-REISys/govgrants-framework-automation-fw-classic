package govgrants.framework.automation.projectmanager;

import com.google.gson.JsonObject;

public class SetUpConfiguration {

    JsonObject sObjectConfig;
    JsonObject fieldConfig;

    /**
     * create json object for different objects
     * 
     * @param fieldName: Name of the relevant api
     * @param componentName: Name of the component that we want to configure
     * @param value:the value we want to modify
     * @return
     */
    public JsonObject getConfigJson(String fieldName, String componentName, String value) {
        sObjectConfig = new JsonObject();
        switch (componentName.toUpperCase()) {
        case "PHASES":
            sObjectConfig.addProperty("sObjectAPIName", String.valueOf(SObjectAPIs.GNT__PhaseConfig__c));
            // sObjectConfig.add("fieldMapStr", getFieldConfigJson());
            break;
        case "SideBar":
            sObjectConfig.addProperty("sObjectAPIName", String.valueOf(SObjectAPIs.GNT__AccordionHeader__c));
            sObjectConfig.add("fieldMapStr",
                    setAccordianFieldConfig(fieldName, SObjectAPIs.GNT__AccordionHeader__c.getId(), value));
            break;
        }
        return sObjectConfig;
    }

    private JsonObject setAccordianFieldConfig(String fieldName, String id, String value) {
        fieldConfig = new JsonObject();
        fieldConfig.addProperty("Id", id);
        switch (fieldName.toUpperCase()) {
        case "NAME":
            fieldConfig.addProperty(String.valueOf(SObjectAPIs.Name), value);
            break;
        }
        return fieldConfig;
    }
    
    private JsonObject setPhasesFieldConfig(String apiName, String id, String value) {
        fieldConfig = new JsonObject();
        fieldConfig.addProperty("Id", id);
        switch (apiName.toUpperCase()) {
        case "Tab Icon CSS":
            fieldConfig.addProperty(String.valueOf(SObjectAPIs.GNT__TabIconCSS__c), value);
            break;
        }
        return fieldConfig;
    }
}
