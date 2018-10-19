package com.framework.automation.projectmanager;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.automation.rei.controller.EnvironmentFetcher;
import com.automation.rei.handlers.Properties_Logs;
import com.automation.rei.webservices.RestfulWebServices;
import com.framework.automation.objects.IdBucket;
import com.framework.automation.payloads.ApiUtilities;
import com.jayway.restassured.response.Response;

import cucumber.api.DataTable;

public class ProjectWebServices {
    RestfulWebServices apiCall = new RestfulWebServices();
    ConfigurationParameters setUpParameters = new ConfigurationParameters();
    SetUpConfiguration configPostCall = new SetUpConfiguration();
    Properties_Logs readProp = new Properties_Logs();
    ApiUtilities apiUtil;
    String filterClause_Program;
    private static String endPoint;
    private String defaultUpdateEndPoint = "/services/apexrest/frameworkAPIUpdate";
    private String defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_secret=7608231485378593656&client_id=3MVG91ftikjGaMd8E01oyLzW0qhdCcSTnpVVwmMdo3H_C6vbhroOOpEF4C.54CXCiOi5SQFyN.a6Ze8NCAcSa&username=pankaj@ggp.test5&password=test@123";
    public static String tokenString;

    //////////////////// Test case configuration API calls ///////////////////////

    /**
     * set up configurational call
     * 
     * @param componentName
     * @param fieldLabel
     * @param value
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
     * @param componentName
     * @param fieldName
     * @param value
     * @return
     */
    private Response postConfigCall(String componentName, String fieldName, String value, String filterClause) {
        Response response = null;
        if (value.contains("ApiGeneratedId")) {
            String[] getValueAt = value.split(":");
            response = apiCall.postCall(null,
                    configPostCall.getConfigJson(componentName, fieldName,
                            ApiUtilities.storeAllIds.get(Integer.parseInt(getValueAt[1])).getId(), filterClause),
                    endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
        } else {
            response = apiCall.postCall(null,
                    configPostCall.getConfigJson(componentName, fieldName, value, filterClause),
                    endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
        }
        return response;
    }

    ////////////// Setup Default Config//////////////

    public Response postDefaultConfigCall() throws IOException {
        Response response = null;
        String filterClause;
        String filterIdValue;
        for (Map<String, String> defaultParameters : ConfigurationParameters.getDefaultConfigurationParameters()) {
            if (defaultParameters.get("filterId") != null) {
                String[] getValueAt = defaultParameters.get("filterId").split(":");
                filterIdValue=ApiUtilities.storeAllIds.get(Integer.parseInt(getValueAt[1])).getId();
                response = handleDefaultConfigWithFilterId(defaultParameters.get("configurationCategory"),
                        defaultParameters.get("fieldName"), defaultParameters.get("fieldOrignalValue"),
                        filterIdValue);
            } else {
                filterClause = initilizeSalesForceIdFilter(defaultParameters.get("configurationCategory"),
                        defaultParameters.get("coreComponentField"), defaultParameters.get("coreCOmponentSubFieldName"),
                        defaultParameters.get("coreComponentSubFieldValue"));
                response = handleDefaultConfigWithoutFileterId(defaultParameters.get("configurationCategory"),
                        defaultParameters.get("fieldName"), defaultParameters.get("fieldOrignalValue"), filterClause);
            }  
        }
        return response;
    }

    //////////////////// Program configuration API calls ///////////////////////

    /**
     * set up configurational call
     * 
     * @param componentName
     * @param fieldLabel
     * @param value
     * @throws IOException
     */
    public void setConfigurationForProgram(String componentName, String fieldLabel, String value) throws IOException {
        createEndPoint();
        getAuthToken();
        assertStatusCode(postProgramConfigCall(componentName, fieldLabel, value));
    }

    /**
     * handle setting up new configurational setting
     * 
     * @param componentName
     * @param fieldName
     * @param value
     * @return
     */
    private Response postProgramConfigCall(String componentName, String fieldName, String value) {
        return apiCall.postCall(null,
                configPostCall.getConfigJson(componentName, fieldName, value, filterClause_Program),
                endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
    }

    /**
     * Start to setup filter for program
     * 
     * @param componentName
     * @param ComponentCoreFieldName
     * @param fieldieldName
     * @param value
     */
    public void initilizeSalesForceIdFilter_Program(String componentName, String ComponentCoreFieldName,
            String fieldieldName, String value) {
        apiUtil = new ApiUtilities();
        filterClause_Program = apiUtil.getFilterClause(componentName, ComponentCoreFieldName, fieldieldName, value);
    }

    /**
     * set up parameters for default configuration
     * 
     * @param componentName
     * @param fieldLabel
     * @param value
     * @param newValue
     *            for filter. it can be a component core field as well in special
     *            cases
     * @throws IOException
     */
    public void setUpDefaultProgramParameters(String componentName, String fieldLabel, String value,
            String newFilterValue) throws IOException {
        setUpParameters.setComponentName_Program(componentName);
        setUpParameters.setFieldLabel_Program(fieldLabel);
        setUpParameters.setValue_Program(value);
        setUpParameters.setNewFieldValue_Program(newFilterValue);

    }

    /**
     * handle setting up default configurational setting
     * 
     * @return
     */
    public Response postProgramDefaultConfigCall() {
        if (filterClause_Program == null) {
            initilizeSalesForceIdFilter_Program(setUpParameters.getComponentName_Program(),
                    setUpParameters.getNewFieldValue_Program(), "", "");

        }
        return apiCall.postCall(null, configPostCall.getConfigJson(setUpParameters.getComponentName_Program(),
                setUpParameters.getFieldLabel_Program(), setUpParameters.getValue_Program(), filterClause_Program),
                endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
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
        apiUtil = new ApiUtilities();
        return apiUtil.getFilterClause(componentName, ComponentCoreFieldName, fieldieldName, value);
    }

    /**
     * get token for authentication of Delete request
     */
    private void getAuthToken() {
        Response response = apiCall.postCall(null, null, endPoint + defaultEndPointGetToken, null, null, null);
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
                    readProp.ReadPropertyFile("govgrants_Config.properties", splittedValue[1]), filterId);
        } else if (fieldOrignalValue.contains("ApiGeneratedId")) {
            System.out.println("Entered here");
            String[] getValueAt = fieldOrignalValue.split(":");
            response = apiCall.postCall(null,
                    new SetUpConfiguration().getConfigJson(configurationCategory, fieldName,
                            ApiUtilities.storeAllIds.get(Integer.parseInt(getValueAt[1])).getId(), filterId),
                    endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
        } else {
            response = apiCall.postCall(null,
                    new SetUpConfiguration().getConfigJson(configurationCategory, fieldName, fieldOrignalValue,
                            filterId),
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
            response = apiCall.postCall(null,
                    new SetUpConfiguration().getConfigJson(configurationCategory, fieldName,
                            ApiUtilities.storeAllIds.get(Integer.parseInt(getValueAt[1])).getId(), filterClause),
                    endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
        } else {
            response = apiCall.postCall(null,
                    new SetUpConfiguration().getConfigJson(configurationCategory, fieldName, fieldOrignalValue,
                            filterClause),
                    endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
        }
        return response;
    }
}
