package com.framework.automation.projectmanager;

import java.io.IOException;
import java.util.ArrayList;

import com.automation.rei.controller.EnvironmentFetcher;
import com.automation.rei.handlers.Properties_Logs;
import com.automation.rei.webservices.RestfulWebServices;
import com.framework.automation.payloads.ApiUtilities;
import com.jayway.restassured.response.Response;

public class ProjectWebServices {
    RestfulWebServices apiCall = new RestfulWebServices();
    ConfigurationParameters setUpParameters = new ConfigurationParameters();
    SetUpConfiguration configPostCall = new SetUpConfiguration();
    Properties_Logs readProp = new Properties_Logs();
    ApiUtilities apiUtil;
    String filterClause_Reconfig;
    String filterClause_Program;
    private static String endPoint;
    private String defaultUpdateEndPoint = "/services/apexrest/frameworkAPIUpdate";
    private String defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_secret=7608231485378593656&client_id=3MVG91ftikjGaMd8E01oyLzW0qhdCcSTnpVVwmMdo3H_C6vbhroOOpEF4C.54CXCiOi5SQFyN.a6Ze8NCAcSa&username=pankaj@ggp.test5&password=test@123";
    public static String tokenString;

    //////////////////// Test case configuration API calls ///////////////////////

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
        filterClause_Reconfig = apiUtil.getFilterClause(componentName, ComponentCoreFieldName, fieldieldName, value);
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
            assertStatusCode(postConfigCall(componentName, fieldLabel,
                    readProp.ReadPropertyFile("govgrants_Config.properties", splittedValue[1])));
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
                configPostCall.getConfigJson(componentName, fieldName, value, filterClause_Reconfig),
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
    public void setUpDefaultParameters(String componentName, String fieldLabel, String value, String newFilterValue)
            throws IOException {
        setUpParameters.setComponentName(componentName);
        setUpParameters.setFieldLabel(fieldLabel);
        setUpParameters.setValue(value);
        setUpParameters.setNewFieldValue(newFilterValue);
    }

    /**
     * handle setting up default configurational setting
     * 
     * @return
     */
    public Response postDefaultConfigCall() {
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
        if (!filterClause_Reconfig.contains(setUpParameters.getNewFieldValue())) {
            newFilterClause = filterClause_Reconfig.replaceAll(setUpParameters.getOldFieldValue(),
                    setUpParameters.getNewFieldValue());
        } else {
            newFilterClause = filterClause_Reconfig;
        }
        return newFilterClause;
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
}
