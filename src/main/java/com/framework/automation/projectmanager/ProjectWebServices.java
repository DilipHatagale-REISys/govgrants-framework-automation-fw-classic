package com.framework.automation.projectmanager;

import com.framework.automation.objects.IdBucket;
import com.framework.automation.payloads.ApiUtilities;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.testingblaze.misclib.Properties_Logs;
import com.testingblaze.register.EnvironmentFactory;
import com.testingblaze.register.I;
import io.restassured.response.Response;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

public class ProjectWebServices {
    SetUpConfiguration configPostCall;
    Properties_Logs readProp = new Properties_Logs();
    ApiUtilities apiUtil;
    private static String endPoint = EnvironmentFactory.getEnvironmentUrl();
    private String defaultUpdateEndPoint = "/services/apexrest/frameworkAPIUpdate";
    public static String tokenString;
    public static ArrayList<IdBucket> storeAllIds;
    public static ProjectWebServices thisValue = null;
    public static String dynamicApi = "None";

    public ProjectWebServices() {
        setUpApiUtilAndSetupConfig();
    }

    private String defaultEndPointGetToken() {
        String defaultEndPointGetToken = "";
        if (EnvironmentFactory.getEnvironmentName().contains("TEST5")) {
            defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_secret=7608231485378593656&client_id=3MVG91ftikjGaMd8E01oyLzW0qhdCcSTnpVVwmMdo3H_C6vbhroOOpEF4C.54CXCiOi5SQFyN.a6Ze8NCAcSa&username=qa_automation@ggp.test5&password=Automation@12345678";
        }else
            if (EnvironmentFactory.getEnvironmentName().contains("QA")) {
            defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_secret=C534061B026C5FBFF856CD31DBB1E722CD7D4D976F6154CA431A976E0C592927&client_id=3MVG9Iu66FKeHhIPe91yESdsJL200IDKuBwsrDV7WewsJy9p2d.Zhgw2ikOH2mpGFHDtoTBZ3c..nrgqTXz7R&username=automationadmin@ggp.test8.atm.fwautomat&password=Automation@2023";
        }
        return defaultEndPointGetToken;
    }


    //////////////////// Test case configuration API calls ///////////////////////

    /**
     * setup id bucket
     */
    public static void setupIdBucket() {
        storeAllIds = new ArrayList<IdBucket>();
    }


    /**
     * @param configurationCategory
     * @param fieldName
     * @param fieldValue
     * @param coreComponentField
     * @param coreCOmponentSubFieldName
     * @param coreComponentSubFieldValue
     * @throws IOException
     */
    public void setupConfigurationForTest(String configurationCategory, String fieldName, String fieldValue,
                                          String coreComponentField, String coreCOmponentSubFieldName, String coreComponentSubFieldValue)
            throws IOException {
        getAuthToken();
        String filterClause = initilizeSalesForceIdFilter(configurationCategory, coreComponentField,
                coreCOmponentSubFieldName, coreComponentSubFieldValue);
        if (fieldValue.contains("govgrants_config")) {
            String[] splittedValue = fieldValue.split(":");
            assertStatusCode(postConfigCall(configurationCategory, fieldName,
                    readProp.ReadPropertyFile("govgrants_Config.properties", splittedValue[1]), filterClause));
        } else {
            assertStatusCode(postConfigCall(configurationCategory, fieldName, fieldValue, filterClause));
        }
    }

    /**
     * It will accept and change locale and timezone value for internal/external user.
     *
     * @param locale
     * @param timeZone
     */
    public void updateLocalAndTimeZone(String locale, String timeZone) {
        getAuthToken();
        String finalEndPoint = endPoint + "/services/apexrest/frameworkCustomsettingAPI?isLocale=true";
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("locale", locale);
        jsonObject.addProperty("timezone", timeZone);
        I.amPerforming().restHttp().putCall(jsonObject, null, finalEndPoint, null, null, tokenString);
    }

    /**
     * @param booleanValue
     * @param integerValue
     * @param id
     * @param description
     * @param name
     */
    public void updateEnableLightningLookup(boolean booleanValue, Integer integerValue, String id, String description, String name) {
        getAuthToken();
        String finalEndPoint = endPoint + "/services/apexrest/frameworkCustomsettingAPI";
        JsonArray jArray = new JsonArray();
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonContainer = new JsonObject();
        jsonObject.addProperty("GNT__BooleanValue__c", booleanValue);
        jsonObject.addProperty("GNT__IntegerValue__c", integerValue);
        jsonObject.addProperty("Id", id);
        jsonObject.addProperty("GNT__Description__c", description);
        jsonObject.addProperty("Name", name);
        jsonContainer.add("fieldvalues", jsonObject);
        jsonContainer.addProperty("customsettingapiname", "GNT__KeyValueStore__c");
        jArray.add(jsonContainer);
        I.amPerforming().restHttp().putCall(null, jArray.toString(), finalEndPoint, null, null, tokenString);
    }

    /**
     * @param booleanValue
     * @param ownerId
     * @param id
     */
    public void updateGlobalConfig(String booleanValue, String id, String ownerId) {
        getAuthToken();
        String[] someApi = booleanValue.split(",");
        String finalEndPoint = endPoint + "/services/apexrest/frameworkCustomsettingAPI";
        JsonArray jArray = new JsonArray();
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonContainer = new JsonObject();
        jsonObject.addProperty("Id", id);
        jsonObject.addProperty("SetupOwnerId", ownerId);
        if (someApi.length != 1) {
            for (String list : someApi) {
                jsonObject.addProperty(list.split(":")[0].trim(), Boolean.parseBoolean(list.split(":")[1].trim()));
            }
        } else {
            jsonObject.addProperty(booleanValue.split(":")[0].trim(), Boolean.parseBoolean(booleanValue.split(":")[1].trim()));
        }
        jsonContainer.add("fieldvalues", jsonObject);
        jsonContainer.addProperty("customsettingapiname", "GNT__GlobalConfig__c");
        jArray.add(jsonContainer);
        I.amPerforming().restHttp().putCall(null, jArray.toString(), finalEndPoint, null, null, tokenString);
    }

    /**
     * @param booleanValue
     * @param Name
     * @param id
     * @param DisplayText
     * @param TargetURL
     * @param Sequence
     */
    public void updateCustomAppFooterConfig(String booleanValue, String id, String Name, String DisplayText, String TargetURL, int Sequence) {
        getAuthToken();
        String[] someApi = booleanValue.split(",");
        String finalEndPoint = endPoint + "/services/apexrest/frameworkCustomsettingAPI";
        JsonArray jArray = new JsonArray();
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonContainer = new JsonObject();
        jsonObject.addProperty("Id", id);
        jsonObject.addProperty("Name", Name);
        jsonObject.addProperty("GNT__DisplayText__c", DisplayText);
        jsonObject.addProperty("GNT__TargetURL__c", TargetURL);
        jsonObject.addProperty("GNT__Sequence__c", Sequence);
        if (someApi.length != 1) {
            for (String list : someApi) {
                jsonObject.addProperty(list.split(":")[0].trim(), Boolean.parseBoolean(list.split(":")[1].trim()));
            }
        } else {
            jsonObject.addProperty(booleanValue.split(":")[0].trim(), Boolean.parseBoolean(booleanValue.split(":")[1].trim()));
        }
        jsonContainer.add("fieldvalues", jsonObject);
        jsonContainer.addProperty("customsettingapiname", "GNT__CustomAppFooterConfig__c");
        jArray.add(jsonContainer);
        I.amPerforming().restHttp().putCall(null, jArray.toString(), finalEndPoint, null, null, tokenString);
    }


    /**
     * @param booleanValue
     * @param Name
     * @param id
     * @param AutoNumberFormat
     * @param StartNumber
     */
    public void updateCustomNameTemplateConfig(String booleanValue, String id, String Name, String AutoNumberFormat, int StartNumber) {
        getAuthToken();
        String[] someApi = booleanValue.split(",");
        String finalEndPoint = endPoint + "/services/apexrest/frameworkCustomsettingAPI";
        JsonArray jArray = new JsonArray();
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonContainer = new JsonObject();
        jsonObject.addProperty("Id", id);
        jsonObject.addProperty("Name", Name);
        jsonObject.addProperty("GNT__AutoNumberFormat__c", AutoNumberFormat);
        jsonObject.addProperty("GNT__StartNumber__c", StartNumber);
        if (someApi.length != 1) {
            for (String list : someApi) {
                jsonObject.addProperty(list.split(":")[0].trim(), Boolean.parseBoolean(list.split(":")[1].trim()));
            }
        } else {
            jsonObject.addProperty(booleanValue.split(":")[0].trim(), Boolean.parseBoolean(booleanValue.split(":")[1].trim()));
        }
        jsonContainer.add("fieldvalues", jsonObject);
        jsonContainer.addProperty("customsettingapiname", "GNT__NameTemplateConfig__c");
        jArray.add(jsonContainer);
        I.amPerforming().restHttp().putCall(null, jArray.toString(), finalEndPoint, null, null, tokenString);
    }

    /**
     * calls the api to delete test program data
     *
     * @param objectName   - the object for which test data should be deleted
     * @param recordName   - the name or title of the record
     * @param fieldApiName - the field API name for which the test data should be deleted
     */
    public void deletionApiProgramRecord(String recordName, String objectName, String fieldApiName) {
        System.out.print("Making API call... ");
        getAuthToken();
        String finalEndPoint = endPoint + "/services/apexrest/GNT/AutomationAPI/Delete";

        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("objectName", objectName);
        jsonObject.addProperty("criteria", "" + fieldApiName + "='" + recordName + "'");

        Response response = I.amPerforming().restHttp().DeleteCall(jsonObject, null, finalEndPoint, "Authorization", "Bearer " + tokenString,
                null);
        System.out.println(finalEndPoint);
        response.prettyPrint();
        System.out.println("Completed.");
        assertStatusCode(response);
    }

    /**
     * calls the api to access and update custom meta data config
     *
     * @param id
     * @param booleanValue
     * @param label
     */
    public void updateCustomMetaDataConfig(String id, String label, Boolean booleanValue) {
        getAuthToken();
        String finalEndPoint = endPoint + "/services/apexrest/frameworkCustomMetadataAPI/CustomMetadata?id=" + id;
        JsonArray jArray = new JsonArray();
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonContainer = new JsonObject();
        jsonObject.addProperty("GNT__BooleanValue__c", booleanValue);
        jsonContainer.add("fieldvalues", jsonObject);
        jsonContainer.addProperty("custommetadatafullname", "GNT__KeyValueHolder__mdt." + label);
        jArray.add(jsonContainer);
        I.amPerforming().restHttp().putCall(null, jArray.toString(), finalEndPoint, null, null, tokenString);
    }

//    public void updateCustomMetaDynamicFieldConfigData(String id, String Name, String Type) {
//        getAuthToken();
//        String finalEndPoint = endPoint + "/services/apexrest/frameworkCustomMetadataAPI/CustomMetadata?id=" + id;
//        JsonArray jArray = new JsonArray();
//        JsonObject jsonObject = new JsonObject();
//        JsonObject jsonContainer = new JsonObject();
//        jsonObject.addProperty("GNT__Type__c", Type);
//        jsonObject.addProperty("Id", id);
//        jsonObject.addProperty("Name", Name);
//        jsonContainer.add("fieldvalues", jsonObject);
//        jsonContainer.addProperty("custommetadatafullname", "GNT__DynamicFieldConfigData__mdt");
//        jArray.add(jsonContainer);
//        I.amPerforming().restHttp().putCall(null, jArray.toString(), finalEndPoint, null, null, tokenString);
//    }
    public void updateCustomMetaDynamicFieldConfigData(String id, String Name, String Type) {
        getAuthToken();
        String finalEndPoint = endPoint + "/services/apexrest/frameworkCustomMetadataAPI/CustomMetadata?id=" + id;
        JsonArray jArray = new JsonArray();
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonContainer = new JsonObject();
        jsonObject.addProperty("Id", id);
        jsonObject.addProperty("Name", Name);
        jsonObject.addProperty("GNT__Type__c", Type);
        jsonContainer.add("fieldvalues", jsonObject);
        jsonContainer.addProperty("custommetadatafullname", "GNT__DynamicFieldConfigData__mdt.");
        jArray.add(jsonContainer);
        I.amPerforming().restHttp().putCall(null, jArray.toString(), finalEndPoint, null, null, tokenString);
    }
    /**
     * calls the api to access and update custom dynamic field config
     *
     * @param id
     * @param Name
     * @param Type
     */
    public void updateDynamicFieldConfig(String id, String Name, String Type) {
        getAuthToken();
        String finalEndPoint = endPoint + "/services/apexrest/frameworkCustomsettingAPI";
        JsonArray jArray = new JsonArray();
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonContainer = new JsonObject();
        jsonObject.addProperty("Id", id);
        jsonObject.addProperty("Name", Name);
        jsonObject.addProperty("GNT__Type__c", Type);
        jsonContainer.add("fieldvalues", jsonObject);
        jsonContainer.addProperty("customsettingapiname", "GNT__DynamicFieldConfig__c");
        jArray.add(jsonContainer);
        I.amPerforming().restHttp().putCall(null, jArray.toString(), finalEndPoint, null, null, tokenString);
    }

    /**
     * calls the api to access and update custom meta data DND config
     *
     * @param id
     * @param dndCriteria
     * @param label
     */
    public void updateCustomMetaDataDNDConfig(String id, String label, String dndCriteria, String filterCriteria) throws IOException {
        getAuthToken();
        String finalEndPoint = endPoint + "/services/apexrest/frameworkCustomMetadataAPI/CustomMetadata?id=" + id;
        JsonArray jArray = new JsonArray();
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonContainer = new JsonObject();
        jsonObject.addProperty("GNT__DNDCriteria__c", dndCriteria);
        jsonObject.addProperty("GNT__FilterCriteria__c", filterCriteria);
        jsonContainer.add("fieldvalues", jsonObject);
        jsonContainer.addProperty("custommetadatafullname", "GNT__DND__mdt." + label);
        jArray.add(jsonContainer);
        I.amPerforming().restHttp().putCall(null, jArray.toString(), finalEndPoint, null, null, tokenString);
    }


    ////////////// Setup Default Config//////////////

    /**
     * it will check parameter as default, lightning etc at steps level inside feature file and perform config changes accordingly.
     *
     * @throws IOException
     */
    public void postDefaultConfigCall() {
        ConfigurationParameters.getDefaultConfigurationParameters().keySet().stream().forEach(keys -> {
            try {
                callRelevantConfiguration(keys);
            } catch (IOException e) {
                e.printStackTrace();
            }
        });
    }

    ////////////// Private methods ///////////////////

    /**
     * This function will help us to set configuration of all custom setting and all components(eg- Approval component, flex table etc..)
     * <p>
     * We just need to pass string parameter to make call on specific function to make default configuration change like:-
     * -- "default" -- for all component configuration
     * -- "global"  -- for all global custom setting changes
     */
    private void callRelevantConfiguration(String configurationType) throws IOException {
        if (configurationType.equalsIgnoreCase("default"))
            executeDefaultConfigurations(configurationType);
        if (configurationType.equalsIgnoreCase("lightening"))
            setDefaultSettingForAllCustomSettings(configurationType);
        if (configurationType.equalsIgnoreCase("timeZoneLocale"))
            setDefaultSettingForLocaleAndTimeZone("timeZoneLocale");
        if (configurationType.equalsIgnoreCase("global"))
            setDefaultGlobalSettingForAllCustomSettings("global");
        if (configurationType.equalsIgnoreCase("customAppFooter")) {
            setDefaultCustomAppFooterSettingForAllCustomSettings("customAppFooter");
        }
        if (configurationType.equalsIgnoreCase("customNameTemplate")) {
            setDefaultCustomNameTemplateSettingForAllCustomSettings("customNameTemplate");
        }
        if (configurationType.equalsIgnoreCase("customMetaData")) {
            setDefaultCustomMetaData("customMetaData");
        }
        if (configurationType.equalsIgnoreCase("dynamicFieldConfig")) {
            setDefaultCustomDynamicFieldConfig("dynamicFieldConfig");
        }
        if (configurationType.equalsIgnoreCase("customMetaDataDND")) {
            setDefaultCustomMetaDataDND("customMetaDataDND");
        }
        if (configurationType.equalsIgnoreCase("CustomMetaDynamicFieldConfigData")) {
            setDefaultCustomDynamicCustomMetadata("CustomMetaDynamicFieldConfigData");
        }
    }

    /**
     * Connecting method for postDefaultConfigCall()
     *
     * @return
     * @throws IOException
     */
    private void executeDefaultConfigurations(String configurationKey) {
        String filterClause;
        String filterIdValue;
        for (Map<String, String> defaultParameters : ConfigurationParameters.getDefaultConfigurationParameters().get(configurationKey))
            if (defaultParameters.get("filterId") != null) {
                String[] getValueAt = defaultParameters.get("filterId").split(":");
                filterIdValue = storeAllIds.get(Integer.parseInt(getValueAt[1])).getId();
                try {
                    handleDefaultConfigWithFilterId(
                            handleConfigCategory(defaultParameters.get("configurationCategory")),
                            defaultParameters.get("fieldName"), defaultParameters.get("fieldOrignalValue"), filterIdValue);
                } catch (IOException e) {
                    // not required
                }
            } else {
                filterClause = initilizeSalesForceIdFilter(defaultParameters.get("configurationCategory"),
                        defaultParameters.get("coreComponentField"), defaultParameters.get("coreCOmponentSubFieldName"),
                        defaultParameters.get("coreComponentSubFieldValue"));
                try {
                    handleDefaultConfigWithoutFileterId(
                            handleConfigCategory(defaultParameters.get("configurationCategory")),
                            defaultParameters.get("fieldName"), defaultParameters.get("fieldOrignalValue"), filterClause);
                } catch (IOException e) {
                    // not required
                }
            }
    }

    /**
     * Start to setup filter for main api call
     *
     * @param componentName
     * @param ComponentCoreFieldName
     * @param fieldieldName
     * @param value
     * @return
     */
    private String initilizeSalesForceIdFilter(String componentName, String ComponentCoreFieldName,
                                               String fieldieldName, String value) {
        return apiUtil.getFilterClause(componentName, ComponentCoreFieldName, fieldieldName, value);
    }

    /**
     * get token for authentication of Delete request
     */
    private void getAuthToken() {
        Response response = I.amPerforming().restHttp().postCall(null, null, endPoint + defaultEndPointGetToken(), null, null, null);
        tokenString = response.body().jsonPath().getString("access_token");
    }

    /**
     * assert for 200 as success code
     *
     * @param response
     */
    private void assertStatusCode(Response response) {
        response.then().statusCode(200);
    }

    /**
     * connecting method for executeDefaultConfigurations
     *
     * @param configurationCategory
     * @param fieldName
     * @param fieldOrignalValue
     * @param filterId
     * @return
     * @throws IOException
     */
    private Response handleDefaultConfigWithFilterId(String configurationCategory, String fieldName,
                                                     String fieldOrignalValue, String filterId) throws IOException {
        Response response = null;
        if (fieldOrignalValue.contains("govgrants_config")) {
            String[] splittedValue = fieldOrignalValue.split(":");
            response = postConfigCall(configurationCategory, fieldName,
                    readProp.ReadPropertyFile("govgrants_Config.properties", splittedValue[1]), filterId + ":idValue");
        } else if (fieldOrignalValue.contains("ApiGeneratedId")) {
            String[] getValueAt = fieldOrignalValue.split(":");
            response = I.amPerforming().restHttp().postCall(null, new SetUpConfiguration().getConfigJson(configurationCategory, fieldName,
                            storeAllIds.get(Integer.parseInt(getValueAt[1])).getId(), filterId + ":idValue"),
                    endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
        } else {
            response = I.amPerforming().restHttp().postCall(null,
                    new SetUpConfiguration().getConfigJson(configurationCategory, fieldName, fieldOrignalValue,
                            filterId + ":idValue"),
                    endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
        }
        return response;
    }

    private Response handleDefaultConfigWithoutFileterId(String configurationCategory, String fieldName,
                                                         String fieldOrignalValue, String filterClause) throws IOException {
        Response response = null;
        if (fieldOrignalValue.contains("govgrants_config")) {
            String[] splittedValue = fieldOrignalValue.split(":");
            response = postConfigCall(configurationCategory, fieldName,
                    readProp.ReadPropertyFile("govgrants_Config.properties", splittedValue[1]), filterClause);
        } else if (fieldOrignalValue.contains("ApiGeneratedId")) {
            String[] getValueAt = fieldOrignalValue.split(":");
            response = I.amPerforming().restHttp().postCall(null,
                    new SetUpConfiguration().getConfigJson(configurationCategory, fieldName,
                            storeAllIds.get(Integer.parseInt(getValueAt[1])).getId(), filterClause),
                    endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
        } else {
            response = I.amPerforming().restHttp().postCall(null,
                    new SetUpConfiguration().getConfigJson(configurationCategory, fieldName, fieldOrignalValue,
                            filterClause),
                    endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
        }
        return response;
    }

    private String handleConfigCategory(String configCategory) {
        String configurationCategory = null;
        if (configCategory.contains(":")) {
            String[] configurationCat = configCategory.split(":");
            configurationCategory = configurationCat[0];
        } else {
            configurationCategory = configCategory;
        }
        return configurationCategory;
    }

    private void setUpApiUtilAndSetupConfig() {
        if (apiUtil == null) {
            apiUtil = new ApiUtilities();
        }
        if (configPostCall == null) {
            configPostCall = new SetUpConfiguration();
        }
    }

    /**
     * It will take key and its value from feature file to make default config changes for custom setting
     * <p>
     * booleanValue - accept true/false for to enable disable custom settings
     * integerValue - it will take integer value for session time out
     * id           - it will take unique custom setting id where changes is supposed to made
     * description  - it will take description of expected custom settings
     * name         - it will take unique custom setting label
     */
    private void setDefaultSettingForAllCustomSettings(String key) {
        for (Map<String, String> customMap : ConfigurationParameters.getDefaultConfigurationParameters().get(key)) {
            updateEnableLightningLookup(Boolean.parseBoolean(customMap.get("booleanValue")), null, customMap.get("id"),
                    customMap.get("description"), customMap.get("name"));
        }
    }

    /**
     * It will take key and its value from feature file to make default config changes for global custom setting
     * <p>
     * booleanValue - accept true/false for to enable disable custom settings
     * id           - it will take unique custom setting id where changes is supposed to made
     * ownerId      - it will unique owner id where all expected fields gets changed
     */
    private void setDefaultGlobalSettingForAllCustomSettings(String key) {
        for (Map<String, String> customMap : ConfigurationParameters.getDefaultConfigurationParameters().get(key)) {
            updateGlobalConfig(customMap.get("booleanValue"), customMap.get("id"), customMap.get("ownerId"));
        }
    }

    /**
     * It will take key and its value from feature file to make default config changes for custom app footer setting
     * <p>
     * booleanValue - accept true/false for to enable disable custom app footer details boolean fields
     * id           - it will take unique custom setting id where changes is supposed to made
     * Name         - it will
     * DisplayText  - it will take string value for field Display Field from feature file
     * TargetUrl    - it will take string url for field Target URL from feature file
     * Sequence     - It will take Integer value for Sequence field from feature file
     */
    private void setDefaultCustomAppFooterSettingForAllCustomSettings(String key) {
        for (Map<String, String> customMap : ConfigurationParameters.getDefaultConfigurationParameters().get(key)) {
            updateCustomAppFooterConfig(customMap.get("booleanValue"), customMap.get("id"), customMap.get("Name"), customMap.get("DisplayText"), customMap.get("TargetURL"), Integer.parseInt(customMap.get("Sequence")));
        }
    }

    /**
     * It will take key and its value from feature file to make default config changes for Locale and TimeZone
     * <p>
     * locale - it will take country locale value from feature file
     * timeZone - it will take country time zone from feature file
     */
    private void setDefaultSettingForLocaleAndTimeZone(String key) {
        for (Map<String, String> customMap : ConfigurationParameters.getDefaultConfigurationParameters().get(key)) {
            updateLocalAndTimeZone(customMap.get("locale"), customMap.get("timeZone"));
        }
    }

    /**
     * It will take key and its value from feature file to make default config changes for custom name template setting
     * <p>
     * booleanValue - accept true/false for to enable disable custom name template details boolean fields
     * id           - it will take unique custom setting id where changes is supposed to made
     * Name         - it will
     * AutoNumberFormat  - it will take string value for formatting Id of new created record from feature file
     * StartNumber     - It will take Integer value for starting number from feature file
     */
    private void setDefaultCustomNameTemplateSettingForAllCustomSettings(String key) {
        for (Map<String, String> customMap : ConfigurationParameters.getDefaultConfigurationParameters().get(key)) {
            updateCustomNameTemplateConfig(customMap.get("booleanValue"), customMap.get("id"), customMap.get("Name"), customMap.get("AutoNumberFormat"), Integer.parseInt(customMap.get("StartNumber")));
        }
    }

    /**
     * It will take key and its value from feature file to make default config changes for custom meta data
     * <p>
     * id - it will take unique custom meta data id where changes is supposed to made
     * booleanValue - accept true/false for to enable disable custom meta data details boolean fields
     * label - it will take custom meta data full name where changes is supposed to made
     */
    private void setDefaultCustomMetaData(String key) {
        for (Map<String, String> customMap : ConfigurationParameters.getDefaultConfigurationParameters().get(key)) {
            updateCustomMetaDataConfig(customMap.get("id"), customMap.get("label"), (Boolean.parseBoolean(customMap.get("booleanValue"))));
        }
    }

    /**
     * It will take key and its value from feature file to make default config changes for custom dynamic fields
     * <p>
     * id - it will take unique custom dynamic field id where changes is supposed to made
     * Name - it will take custom dynamic field name where changes is supposed to made
     * Type - it will take custom dynamic field type where changes is supposed to made
     */
    private void setDefaultCustomDynamicFieldConfig(String key) {
        for (Map<String, String> customMap : ConfigurationParameters.getDefaultConfigurationParameters().get(key)) {
            updateDynamicFieldConfig(customMap.get("id"), customMap.get("Name"), customMap.get("Type"));
        }
    }
    private void setDefaultCustomDynamicCustomMetadata(String key) {
        for (Map<String, String> customMap : ConfigurationParameters.getDefaultConfigurationParameters().get(key)) {
            updateCustomMetaDynamicFieldConfigData(customMap.get("id"), customMap.get("Name"), customMap.get("Type"));
        }
    }

    /**
     * It will take key and its value from feature file to make default config changes for custom meta data DND config
     * <p>
     * id - it will take unique custom meta data DND id where changes is supposed to made
     * booleanValue - accept true/false for to enable disable custom meta data DND details boolean fields
     * label - it will take custom meta data DND full name where changes is supposed to made
     */
    private void setDefaultCustomMetaDataDND(String key) throws IOException {
        for (Map<String, String> customMap : ConfigurationParameters.getDefaultConfigurationParameters().get(key)) {
            updateCustomMetaDataDNDConfig(customMap.get("id"), customMap.get("label"), customMap.get("dndCriteria"), customMap.get("filterCriteria"));
        }
    }

    /**
     * handle setting up new configurational setting
     *
     * @param configCategory
     * @param fieldName
     * @param value
     * @param filterClause
     * @return
     */
    private Response postConfigCall(String configCategory, String fieldName, String value, String filterClause) {
        Response response = null;
        var callingEndPoint = endPoint + defaultUpdateEndPoint;
        if (value.contains("ApiGeneratedId")) {
            String[] getValueAt = value.split(":");
            response = I.amPerforming().restHttp().postCall(null,
                    configPostCall.getConfigJson(handleConfigCategory(configCategory), fieldName,
                            storeAllIds.get(Integer.parseInt(getValueAt[1])).getId(), filterClause),
                    callingEndPoint, "Authorization", "Bearer " + tokenString, null);
        } else {
            response = I.amPerforming().restHttp().postCall(null,
                    configPostCall.getConfigJson(handleConfigCategory(configCategory), fieldName, value, filterClause),
                    callingEndPoint, "Authorization", "Bearer " + tokenString, null);
        }
        return response;
    }
}