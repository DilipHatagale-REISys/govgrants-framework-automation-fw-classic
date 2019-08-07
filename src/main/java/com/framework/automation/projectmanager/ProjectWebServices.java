package com.framework.automation.projectmanager;

import com.framework.automation.objects.IdBucket;
import com.framework.automation.payloads.ApiUtilities;
import com.jayway.restassured.response.Response;
import eyethink.automation.bots.Register.EyeThink;
import eyethink.automation.bots.controller.EnvironmentFetcher;
import eyethink.automation.bots.corelib.Properties_Logs;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

public class ProjectWebServices {
    SetUpConfiguration configPostCall;
    Properties_Logs readProp = new Properties_Logs();
    ApiUtilities apiUtil;
    private static String endPoint;
    private String defaultUpdateEndPoint = "/services/apexrest/frameworkAPIUpdate";
    private String defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_secret=7608231485378593656&client_id=3MVG91ftikjGaMd8E01oyLzW0qhdCcSTnpVVwmMdo3H_C6vbhroOOpEF4C.54CXCiOi5SQFyN.a6Ze8NCAcSa&username=pankaj@ggp.test5&password=test@123";
    public static String tokenString;
    public static ArrayList<IdBucket> storeAllIds;
    public static ProjectWebServices thisValue = null;

    public ProjectWebServices() {
        setUpApiUtilAndSetupConfig();
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
        createEndPoint();
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
        if (value.contains("ApiGeneratedId")) {
            String[] getValueAt = value.split(":");
            response = EyeThink.core().apiCall().postCall(null,
                    configPostCall.getConfigJson(handleConfigCategory(configCategory), fieldName,
                            storeAllIds.get(Integer.parseInt(getValueAt[1])).getId(), filterClause),
                    endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
        } else {
            response = EyeThink.core().apiCall().postCall(null,
                    configPostCall.getConfigJson(handleConfigCategory(configCategory), fieldName, value, filterClause),
                    endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
        }
        return response;
    }

    ////////////// Setup Default Config//////////////

    public Response postDefaultConfigCall() throws IOException {
        System.out.println("Default executed");
        Response response = null;
        String filterClause;
        String filterIdValue;
        for (Map<String, String> defaultParameters : ConfigurationParameters.getDefaultConfigurationParameters()) {
            if (defaultParameters.get("filterId") != null) {
                String[] getValueAt = defaultParameters.get("filterId").split(":");
                filterIdValue = storeAllIds.get(Integer.parseInt(getValueAt[1])).getId();
                response = handleDefaultConfigWithFilterId(
                        handleConfigCategory(defaultParameters.get("configurationCategory")),
                        defaultParameters.get("fieldName"), defaultParameters.get("fieldOrignalValue"), filterIdValue);
            } else {
                filterClause = initilizeSalesForceIdFilter(defaultParameters.get("configurationCategory"),
                        defaultParameters.get("coreComponentField"), defaultParameters.get("coreCOmponentSubFieldName"),
                        defaultParameters.get("coreComponentSubFieldValue"));
                response = handleDefaultConfigWithoutFileterId(
                        handleConfigCategory(defaultParameters.get("configurationCategory")),
                        defaultParameters.get("fieldName"), defaultParameters.get("fieldOrignalValue"), filterClause);
            }
        }
        return response;
    }

    ////////////// Private methods ///////////////////

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
        Response response = EyeThink.core().apiCall().postCall(null, null, endPoint + defaultEndPointGetToken, null, null, null);
        this.tokenString = response.body().jsonPath().getString("access_token");
    }

    /**
     * create end point based on different urls
     */
    public void createEndPoint() {
        this.endPoint = EnvironmentFetcher.environment;
    }

    /**
     * assert for 200 as success code
     *
     * @param response
     */
    private void assertStatusCode(Response response) {
        response.then().statusCode(200);
    }

    private Response handleDefaultConfigWithFilterId(String configurationCategory, String fieldName,
                                                     String fieldOrignalValue, String filterId) throws IOException {
        Response response = null;
        if (fieldOrignalValue.contains("govgrants_config")) {
            String[] splittedValue = fieldOrignalValue.split(":");
            response = postConfigCall(configurationCategory, fieldName,
                    readProp.ReadPropertyFile("govgrants_Config.properties", splittedValue[1]), filterId + ":idValue");
        } else if (fieldOrignalValue.contains("ApiGeneratedId")) {
            String[] getValueAt = fieldOrignalValue.split(":");
            response = EyeThink.core().apiCall().postCall(null, new SetUpConfiguration().getConfigJson(configurationCategory, fieldName,
                    storeAllIds.get(Integer.parseInt(getValueAt[1])).getId(), filterId + ":idValue"),
                    endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
        } else {
            response = EyeThink.core().apiCall().postCall(null,
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
            response = EyeThink.core().apiCall().postCall(null,
                    new SetUpConfiguration().getConfigJson(configurationCategory, fieldName,
                            storeAllIds.get(Integer.parseInt(getValueAt[1])).getId(), filterClause),
                    endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
        } else {
            response = EyeThink.core().apiCall().postCall(null,
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
}
