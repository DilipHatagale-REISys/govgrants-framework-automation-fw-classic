package com.framework.automation.projectmanager;

import java.io.IOException;

import com.automation.rei.controller.EnvironmentFetcher;
import com.automation.rei.handlers.Properties_Logs;
import com.automation.rei.webservices.RestfulWebServices;
import com.framework.automation.payloads.ApiUtilities;
import com.jayway.restassured.response.Response;

public class ProjectWebServices {
    RestfulWebServices apiCall = new RestfulWebServices();
    ConfigurationParameters setUpParameters = new ConfigurationParameters();
    Properties_Logs readProp = new Properties_Logs();
    ApiUtilities apiUtil;
    String filterClause;
    private static String endPoint;
    private String defaultUpdateEndPoint = "/services/apexrest/frameworkAPIUpdate";
    private String defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_secret=7608231485378593656&client_id=3MVG91ftikjGaMd8E01oyLzW0qhdCcSTnpVVwmMdo3H_C6vbhroOOpEF4C.54CXCiOi5SQFyN.a6Ze8NCAcSa&username=pankaj@ggp.test5&password=test@123";
    public static String tokenString;

    /**
     * Start to setup filter for main api call
     * 
     * @param componentName
     * @param ComponentCoreFieldName
     * @param fieldieldName
     * @param value
     */
    public void initilizeSalesForceIdFilter(String componentName, String ComponentCoreFieldName, String fieldieldName,
            String value) {
        setUpParameters.setOldFieldValue(value);
        apiUtil = new ApiUtilities();
        filterClause = apiUtil.getFilterClause(componentName, ComponentCoreFieldName, fieldieldName, value);
    }

    /**
     * set up configurational call
     * 
     * @param componentName
     * @param fieldLabel
     * @param value
     * @throws IOException 
     */
    public void setConfigurationTest(String componentName, String fieldLabel, String value) throws IOException {
        createEndPoint();
        getAuthToken();
        if (value.contains("govgrants_config")) {
            String[] splittedValue = value.split(":");
            assertStatusCode(postConfigCall(componentName, fieldLabel, readProp.ReadPropertyFile("govgrants_Config.properties", splittedValue[1])));
        } else {   
        assertStatusCode(postConfigCall(componentName, fieldLabel, value));
        }
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

    /**
     * handle setting up new configurational setting
     * 
     * @param componentName
     * @param fieldName
     * @param value
     * @return
     */
    private Response postConfigCall(String componentName, String fieldName, String value) {
        return apiCall.postCall(null,
                new SetUpConfiguration().getConfigJson(componentName, fieldName, value, filterClause),
                endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
    }

    /**
     * set up parameters for default configuration
     * 
     * @param componentName
     * @param fieldLabel
     * @param value
     * @param newValue
     * @throws IOException 
     */
    public void setUpDefaultParameters(String componentName, String fieldLabel, String value, String newValue) throws IOException {
        setUpParameters.setComponentName(componentName);
        setUpParameters.setFieldLabel(fieldLabel);
        setUpParameters.setValue(value);
        setUpParameters.setNewFieldValue(newValue);
    }

    /**
     * handle setting up default configurational setting
     * 
     * @return
     */
    public Response postReConfigCall() {
        return apiCall.postCall(null, new SetUpConfiguration().getConfigJson(setUpParameters.getComponentName(),
                setUpParameters.getFieldLabel(), setUpParameters.getValue(), isFilterClauseGoodForDefaultSetting()),
                endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
    }

    /**
     * update filter clause for default configuration
     * 
     * @return
     */
    private String isFilterClauseGoodForDefaultSetting() {
        String newFilterClause = null;
        if (!filterClause.contains(setUpParameters.getNewFieldValue())) {
            newFilterClause = filterClause.replaceAll(setUpParameters.getOldFieldValue(),
                    setUpParameters.getNewFieldValue());
        } else {
            newFilterClause = filterClause;
        }
        return newFilterClause;
    }
}
