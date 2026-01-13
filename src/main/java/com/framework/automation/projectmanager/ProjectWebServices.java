package com.framework.automation.projectmanager;

import com.helperPackage.handlers.govgrants;
import com.framework.automation.objects.IdBucket;
import com.framework.automation.payloads.Announcements;
import com.framework.automation.payloads.ApiUtilities;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.helperPackage.misclib.Properties_Logs;
import com.helperPackage.register.EnvironmentFactory;
import com.helperPackage.register.I;
import io.restassured.response.Response;
import io.restassured.response.ResponseBodyData;
import org.apache.commons.lang.StringUtils;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class ProjectWebServices {
    private String jobID;
    private String status;
    SetUpConfiguration configPostCall;
    Properties_Logs readProp = new Properties_Logs();
    ApiUtilities apiUtil;
    protected static String endPoint = EnvironmentFactory.getEnvironmentUrl();
    private String defaultUpdateEndPoint = "/services/apexrest/frameworkAPIUpdate";
    public static String tokenString;
    public static ArrayList<IdBucket> storeAllIds;
    public static ProjectWebServices thisValue = null;
    public static String dynamicApi = "None";
    Announcements projectApis = new Announcements();

    public ProjectWebServices() {
        setUpApiUtilAndSetupConfig();
    }

    public static String getIdOf(String objectName, String findMyId) {
        String finalEndPoint = endPoint + "/services/apexrest/getRecordIds/v1";
        JsonObject parent = new JsonObject();
        JsonArray array = new JsonArray();
        array.add(findMyId);
        parent.add(objectName, array);

        Response response = I.amPerforming().restHttp().postCall(parent, null, finalEndPoint, "Authorization", "Bearer " + tokenString, null);
        assertStatusCode(response);
        Map<String, String> map = response.jsonPath().getMap("$");
        return map.get(findMyId);

    }

    public static String getRecordTypeId(String objectName, String findMyId) {
        String endpoint = endPoint + "/services/apexrest/getRecordTypeIds/v1";
        JsonObject parent = new JsonObject();
        parent.addProperty(objectName, findMyId);

        Response response = I.amPerforming().restHttp().postCall(parent, null, endpoint, "Authorization", "Bearer " + tokenString, null);
        assertStatusCode(response);
        Map<String, String> map = response.jsonPath().getMap("$");
        return map.get(objectName);
    }

    public static Map<String, String> getMultipleIds(JsonObject jsonObject) {
        String finalEndPoint = endPoint + "/services/apexrest/getRecordIds/v1";
        Response response = I.amPerforming().restHttp().postCall(jsonObject, null, finalEndPoint, "Authorization", "Bearer " + tokenString, null);
        assertStatusCode(response);
        return response.jsonPath().getMap("$");
    }

    public static Response getRecordId(String recordName, String fieldName, String objectType, String outputFieldName) {
        String finalEndPoint = endPoint + "/services/apexrest/productAutomationGetFieldValue?objectType=" + objectType
                + "&fieldValue=" + recordName + "&fieldName=" + fieldName + "&outputFieldName=" + outputFieldName;
        Response response = I.amPerforming().restHttp().getCall(finalEndPoint, "Authorization", "Bearer " + tokenString);
        response.prettyPrint();
        assertStatusCode(response);
        return response;
    }

    public static Response getRecordId(String recordName, String fieldName, String objectType) {
        String finalEndPoint = endPoint + "/services/apexrest/productAutomationGetFieldValue?objectType=" + objectType
                + "&fieldValue=" + recordName + "&fieldName=" + fieldName;
        Response response = I.amPerforming().restHttp().getCall(finalEndPoint, "Authorization", "Bearer " + tokenString);
        response.prettyPrint();
        assertStatusCode(response);
        return response;
    }

    public Response automationBatchExecuteApi(String objectType, String recordName, String... objectName) {
        String finalEndPoint, objectApiName = "";
        Response response = null;
        objectApiName = objectName[0];
        finalEndPoint = endPoint + "/services/apexrest/productAutomationRunBatchJob?type=" + objectType + "&recordName="
                + recordName;

        response = I.amPerforming().restHttp().getCall(finalEndPoint, "Authorization", "Bearer " + tokenString);
        assertStatusCode(response);

        jobID = response.asString().replace("\"", "");
        finalEndPoint = endPoint + "/services/apexrest/productAutomationGetBatchJobStatus?batchId=" + jobID;
        I.amPerforming().waitFor().makeThreadSleep(20000);
        long apiWaitTimer = (System.currentTimeMillis()) / 1000 + 120;
        while (apiWaitTimer > System.currentTimeMillis() / 1000) {
            response = I.amPerforming().restHttp().getCall(finalEndPoint, "Authorization", "Bearer " + tokenString);
            assertStatusCode(response);
            status = response.asString().replace("\"", "");
            if (status.equalsIgnoreCase("Completed") || status.equalsIgnoreCase("Aborted")) {
                System.out.println("Batch Status is :" + status);
                break;
            }
            I.amPerforming().waitFor().makeThreadSleep(7000);
        }

        if (status.equalsIgnoreCase("Completed") && objectName.length == 1 && !objectApiName.equalsIgnoreCase("closeout")) {
            return getRecordId(recordName, "Title__c", objectApiName);
        } else {
            return response;
        }
    }

    private String defaultEndPointGetToken() {
        String defaultEndPointGetToken = "";
        if (EnvironmentFactory.getEnvironmentName().contains("TEST5")) {
            defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_secret=7608231485378593656&client_id=3MVG91ftikjGaMd8E01oyLzW0qhdCcSTnpVVwmMdo3H_C6vbhroOOpEF4C.54CXCiOi5SQFyN.a6Ze8NCAcSa&username=qa_automation@ggp.test5&password=Automation@12345678";
        } else if (EnvironmentFactory.getEnvironmentName().contains("FWPATCH")) {
            defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_secret=FED687A3A0BBA7AF7E537EB8D3EBE92281D7609031F0751FFCB10DD3E52DDF64&client_id=3MVG98im9TK34CUW45zaL1fTHaLLiykIdoQeUHbf1cm3OspjgGVFjNgpZvV5hcdc2ccKT1TS4snyshQJb9Nmy&username=automationadminpatch@yopmail.com.atm.frwpatch&password=Patch@02oct";
        } else if (EnvironmentFactory.getEnvironmentName().contains("FWLWC-GRANTOR")) {
            defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_secret=9891CA2421B3307CEDFA0F2AB3113A94EB329125539A0B5C5F4FF8206C733369&client_id=3MVG9RHx1QGZ7Osjc_dBcgjE7QBmm0KFfeoguDyiCQ1onGF6O0ZH6vkmgaOlCmfE9TKiL6.l9OxRenPEaEN5o&username=govgrantsautomation@yopmail.com.frwklwcaut&password=FwLwc@02oct";
        } else if (EnvironmentFactory.getEnvironmentName().contains("FWCLASSIC")) {
            defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_secret=FEB116B3A657A8896DA8E68DA49D219409D69692B80F775E6E2D1E4C1A04E4F2&client_id=3MVG9igNVW5mZVnXrVx_V11V80UE0UFG0WoQU3iuEur3te_8ukuxKKxhdFHQL3SRYQ6bjiS8c90Z0gr_WzqIk&username=govgrantsautomation5@yopmail.com.fwautomat&password=Jupiter@2026";
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

    public static void changeUserActivationStatus(String usersToUpdate, boolean shouldBeActivated) {
        String finalEndPoint = endPoint + "/services/apexrest/Active/" + usersToUpdate;
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("isActive", shouldBeActivated);
        Response response = I.amPerforming().restHttp().patchCall(jsonObject, null, finalEndPoint, "Authorization", "Bearer " + tokenString, null);
        assertStatusCode(response);
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

    private void publishAnnouncementPostCall(JsonObject jsonObject) {
        String finalEndPoint = endPoint + "/services/apexrest/PublishAnnouncementCopy";
        Response response = I.amPerforming().restHttp().postCall(jsonObject, null,
                finalEndPoint, "Authorization", "Bearer " + tokenString, null);
        response.prettyPrint();
        assertStatusCode(response);
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
        System.out.println("Print final end point..." + finalEndPoint);
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

    public void deletionApi(String recordName, String objectType) {
        System.out.print("Making API call... ");
        getAuthToken();
        try {
            recordName = URLEncoder.encode(recordName, StandardCharsets.UTF_8.toString());
            objectType = URLEncoder.encode(objectType, StandardCharsets.UTF_8.toString());
        } catch (Exception e) {
        }
        String finalEndPoint = endPoint + "/services/apexrest/productAutomationDeletionApi?objectType=" + objectType
                + "&recordName=" + recordName;
        Response response = I.amPerforming().restHttp().DeleteCall(null, null, finalEndPoint, "Authorization", "Bearer " + tokenString,
                null);
        System.out.println(finalEndPoint);
        response.prettyPrint();
        System.out.println("Completed. ");
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
        Response response = I.amPerforming().restHttp().postCall(null, null, endPoint + defaultEndPointGetToken(), "Authorization", "Bearer ", null);
        tokenString = response.body().jsonPath().getString("access_token");
    }

    /**
     * assert for 200 as success code
     *
     * @param response
     */
    protected static void assertStatusCode(Response response) {
        response.then().statusCode(200);
        System.out.println("response code is " + response.getStatusCode());
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

    public void executeBatchFileApi(String programName, String announcementName, String objectType, String projectTitle, String status) {
        System.out.print("Making API call to execute batch file");
        String finalEndPoint = endPoint;
        if (objectType.equalsIgnoreCase("Program")) {
            recordCreationForProgram(projectTitle, status);
        }
    }

    public void recordCreationForProgram(String projectTitle, String status) {
        getAuthToken();
        if (projectTitle.startsWith("Automation Runtime")) {
            String newRecordTitle = projectTitle + I.amPerforming().addOnsTo().getStringRandomNumber();
            I.amPerforming().propertiesFileOperationsTo().saveValue(projectTitle, newRecordTitle);
            projectTitle = newRecordTitle;
        }
        JsonObject parent = new JsonObject();
        JsonArray array = new JsonArray();
        parent.addProperty("programName", projectTitle);
        parent.addProperty("status", status);
        String finalEndPoint = endPoint + "/services/apexrest/Program";
        Response response = I.amPerforming().restHttp().postCall(parent, null, finalEndPoint, "Authorization", "Bearer " + tokenString, null);
        response.prettyPrint();
        System.out.println(finalEndPoint);
        assertStatusCode(response);
        String ProgramTitle = "Program";
        I.amPerforming().propertiesFileOperationsTo().saveValue(ProgramTitle, StringUtils.substringBetween(response.prettyPrint(), "\"", "\""));
        ProgramTitle = StringUtils.substringBetween(response.prettyPrint(), "\"", "\"");
//System.out.println("Program Name: "+ProgramTitle);
    }

    public void publishAnnouncment(String annType, String annName, String filter) {
        getAuthToken();
        publishAnnouncementPostCall(projectApis.publishAnnPayload(annType, annName, filter));
    }


    public void initateApplicationReviewOnAnnouncement(String applicationTitle, String announcementTitle, String filter) {
        initiateApplicationReview(projectApis.applicationReview(applicationTitle, announcementTitle, filter));
    }

    private void initiateApplicationReview(JsonObject jsonObject) {
        String finalEndPoint = endPoint + "/services/apexrest/CreateFDMCopy/v1";
        Response response = I.amPerforming().restHttp().postCall(jsonObject, null,
                finalEndPoint, "Authorization", "Bearer " + tokenString, null);
        assertStatusCode(response);
    }

    public void approveDFM(String applicationName) {
        approveDFMPostCall(projectApis.defaultRequestPayroleForApprovedDFM(), applicationName);
    }

    private void approveDFMPostCall(JsonObject jsonObject, String applicationName) {
        String finalEndPoint = endPoint + "/services/apexrest/CreateFDM/v2?AppId=" + getIdOf("Application__c", applicationName);
        Response response = I.amPerforming().restHttp().postCall(jsonObject, null,
                finalEndPoint, "Authorization", "Bearer " + tokenString, null);
        assertStatusCode(response);
    }

    private void activateSubawardGetCall(JsonObject jsonObject, String awardName) {
        getAuthToken();
        String createAwardEndPoint = endPoint + "/services/apexrest/activateAwardFromGrantCopy/v1";
        Response response = I.amPerforming().restHttp().postCall(jsonObject, null,
                createAwardEndPoint, "Authorization", "Bearer " + tokenString, null);
        response.prettyPrint();
        assertStatusCode(response);
        I.amPerforming().waitFor().makeThreadSleep(60000);
        String activateAwardEndPoint = endPoint + "/services/apexrest/activateAwardFromGrant/v2?AwardId=" + getIdOf("Award__c", awardName);
        Response response1 = I.amPerforming().restHttp().getCall(
                activateAwardEndPoint, "Authorization", "Bearer " + tokenString);
        response1.prettyPrint();
        assertStatusCode(response1);
    }

    public void activateSubaward(String grantName, String filter, String... Type) {
        getAuthToken();
        if (Type.length > 0)
            activateSubawardGetCall(projectApis.payloadForCreateStandaloneAward(grantName, filter, Type[0]), grantName);
        else
            activateSubawardGetCall(projectApis.payloadForCreateStandaloneAward(grantName, filter), grantName);
    }

    public void getRecordIdFromResponse(String objectType, String recordName, String objectApiName) {
        String response = "";
        response = (automationBatchExecuteApi(objectType, recordName, objectApiName.split(","))).asString().replace("\"", "");
        if (!response.equalsIgnoreCase("Completed")) {
            govgrants.perform().pageDetails().idOfRecord = response;
            I.amPerforming().propertiesFileOperationsTo().saveValue("Record Id", govgrants.perform().pageDetails().idOfRecord);
        }
    }

    public void createAwardFromFDM(String announcementName) {
        createAwardFromFDMPostCall(projectApis.defaultPayloadCreateAwardFromFDM(announcementName));
    }

    private void createAwardFromFDMPostCall(JsonObject jsonObject) {
        String finalEndPoint = endPoint + "/services/apexrest/activateAwardFromFDM/v1.1";
        I.amPerforming().waitFor().makeThreadSleep(5000);
        Response response = I.amPerforming().restHttp().postCall(jsonObject, null,
                finalEndPoint, "Authorization", "Bearer " + tokenString, null);
        response.prettyPrint();
        assertStatusCode(response);
    }

    public void activateFMD(String applicationName) {
        activateAwardFromFDMPostCall(projectApis.defaultPayloadActivateAwardFromFDM(), applicationName);
    }

    private void activateAwardFromFDMPostCall(JsonObject jsonObject, String applicationName) {
        String finalEndPoint = endPoint + "/services/apexrest/activateAwardFromFDM/v2?GrantId=" + getIdOf("Grant__c", applicationName);
        Response response = I.amPerforming().restHttp().postCall(jsonObject, null,
                finalEndPoint, "Authorization", "Bearer " + tokenString, null);
        response.prettyPrint();
        assertStatusCode(response);
    }

    public Response riskAssessmentApi(String organizationName) {
        getAuthToken();
        String finalEndPoint = endPoint + "/services/apexrest/productAutomationRiskAssessmentApi?recordName=" + organizationName;
        Response response = I.amPerforming().restHttp().getCall(finalEndPoint, "Authorization", "Bearer " + tokenString);
        response.prettyPrint();
        assertStatusCode(response);
        return response;
    }

    public void createAwardFromFDM(String announcementName, String... Type) {
        if (Type.length > 0)
            createAwardFromFDMPostCall(projectApis.PayloadCreateAwardFromFDM(announcementName, Type[0]));
        else
            createAwardFromFDMPostCall(projectApis.PayloadCreateAwardFromFDM(announcementName));
    }

    public void deleteRecordInHooks() {
        List<String> recordNameList = I.amPerforming().propertiesFileOperationsTo().getAllSavedKeys().stream()
                .filter(Keys -> Keys.startsWith("AUTOMATION RUNTIME")).collect(Collectors.toList());

        for (String record : recordNameList) {
            if (StringUtils.containsIgnoreCase(record, "focus area")) {
                deleteFocusArea(I.amPerforming().propertiesFileOperationsTo().getValue(record));
            }
            if (StringUtils.containsIgnoreCase(record, "funding source")) {
                deleteFundingSource(I.amPerforming().propertiesFileOperationsTo().getValue(record));
            }
            if (StringUtils.containsIgnoreCase(record, "kpi")) {
                deleteKPI(I.amPerforming().propertiesFileOperationsTo().getValue(record));
            }
            if (StringUtils.containsIgnoreCase(record, "program")) {
                deleteProgram(I.amPerforming().propertiesFileOperationsTo().getValue(record));
            }
            if (StringUtils.containsIgnoreCase(record, "strategic plan")) {
                deleteStrategicPlan(I.amPerforming().propertiesFileOperationsTo().getValue(record));
            }
            if (StringUtils.containsIgnoreCase(record, "site visit")) {
                deleteSiteVisit(I.amPerforming().propertiesFileOperationsTo().getValue(record));
            }
            if (StringUtils.containsIgnoreCase(record, "desk")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Desk Review");
            }
            if (StringUtils.containsIgnoreCase(record, "amendment")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Amendment Request");
            }
            if (StringUtils.containsIgnoreCase(record, "payment")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Payment Request");
            }
            if (StringUtils.containsIgnoreCase(record, "risk")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "ORGANIZATION RISKASSESSMENT");
            }
            if (StringUtils.containsIgnoreCase(record, "closeout")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Closeout");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Payment Request");
            }
            if (StringUtils.containsIgnoreCase(record, "contact")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Contact");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "DUNS");
            }
            if (StringUtils.containsIgnoreCase(record, "application")) {
                try {
                    deleteAttachmentsForRecord(I.amPerforming().propertiesFileOperationsTo().getValue(record), "PreApplication__c");
                } catch (AssertionError error) {
                }
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "APPLICATION REVIEWS");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "PreApplication");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Application");
            }
            if (StringUtils.containsIgnoreCase(record, "Organization")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "USER REGISTRATION");
            }
        }

        if (recordNameList.stream().anyMatch(s -> s.toLowerCase().contains("award"))) {
            for (String record : recordNameList) {
                if (StringUtils.containsIgnoreCase(record, "award")) {
                    deleteAward(I.amPerforming().propertiesFileOperationsTo().getValue(record));
                }
            }
        }

        if (recordNameList.stream().anyMatch(s -> s.toLowerCase().contains("announcement"))) {
            for (String record : recordNameList) {
                if (StringUtils.containsIgnoreCase(record, "announcement")) {
                    deleteAnnouncement(I.amPerforming().propertiesFileOperationsTo().getValue(record));
                }
            }
        }

        if (recordNameList.stream().anyMatch(s -> s.toLowerCase().contains("fdm"))) {
            deleteFDM(recordNameList);
        }
    }

    private void deleteAward(String recordName) {
        deletionApi(recordName, "Progress Report");
        deletionApi(recordName, "Progress Report");
        deletionApi(recordName, "Amendment Request");
        deletionApi(recordName, "Payment Request");
        deletionApi(recordName, "Award");
        deletionApi(recordName, "Grant");
    }

    public static void deleteAttachmentsForRecord(String recordName, String objectAPIName) {
        String recordId = getIdOf(objectAPIName, recordName);
        JsonObject parent = new JsonObject();
        JsonArray array = new JsonArray();
        array.add(recordId);
        parent.add("recordid", array);
        String finalEndPoint = endPoint + "/services/apexrest/deleteFiles";
        Response response = I.amPerforming().restHttp().postCall(parent, null, finalEndPoint, "Authorization", "Bearer " + tokenString, null);
        assertStatusCode(response);
    }


    private void deleteFDM(List<String> recordNames) {


        for (String record : recordNames) {
            if (StringUtils.containsIgnoreCase(record, "desk review")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Desk Review");
            }
        }

        for (String record : recordNames) {
            if (StringUtils.containsIgnoreCase(record, "site visit")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Site Visit");
            }
        }

        for (String record : recordNames) {
            if (StringUtils.containsIgnoreCase(record, "application")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "APPLICATION REVIEWS");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "PreApplication");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Application");
            }
        }

        for (String record : recordNames) {
            if (StringUtils.containsIgnoreCase(record, "announcement")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Announcement");
            }
        }

        for (String record : recordNames) {
            if (StringUtils.containsIgnoreCase(record, "fdm")) {
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Progress Report");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "FDM");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "subaward");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Award");
                deletionApi(I.amPerforming().propertiesFileOperationsTo().getValue(record), "Grant");
            }
        }
    }

    public void deleteAnnouncement(String recordName) {
        deletionApi(recordName, "APPLICATION REVIEWS");
        deletionApi(recordName, "Application");
        deletionApi(recordName, "PreApplication");
        deletionApi(recordName, "Announcement");
    }

    private void deleteFocusArea(String recordName) {
        deletionApi(recordName, "Focus Area");
    }

    private void deleteFundingSource(String recordName) {
        deletionApi(recordName, "Funding Source");
    }

    private void deleteKPI(String recordName) {
        deletionApi(recordName, "KPI");
    }

    private void deleteProgram(String recordName) {
        deletionApi(recordName, "Program");
    }

    private void deleteStrategicPlan(String recordName) {
        deletionApi(recordName, "Strategic Plan");
    }

    private void deleteSiteVisit(String recordName) {

        deletionApi(recordName, "Site Visit");
    }

    private void deleteOrganization(String recordName) {
        deletionApi(recordName, "USER REGISTRATION");
    }


}