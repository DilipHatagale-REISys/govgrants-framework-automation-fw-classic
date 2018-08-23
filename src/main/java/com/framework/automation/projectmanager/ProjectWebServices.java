package com.framework.automation.projectmanager;

import com.automation.rei.controller.EnvironmentFetcher;
import com.automation.rei.webservices.RestfulWebServices;
import com.jayway.restassured.response.Response;

public class ProjectWebServices {
	RestfulWebServices apiCall = new RestfulWebServices();
	ConfigurationParameters setUpParameters;
	private static String endPoint;
	private String defaultUpdateEndPoint = "/services/apexrest/frameworkAPIUpdate";
	private String defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_secret=7608231485378593656&client_id=3MVG91ftikjGaMd8E01oyLzW0qhdCcSTnpVVwmMdo3H_C6vbhroOOpEF4C.54CXCiOi5SQFyN.a6Ze8NCAcSa&username=pankaj@ggp.test5&password=test@123";
	public static String tokenString;

	/**
	 * Handle all Api calls for deletion based on pathway
	 * 
	 * @param pathway
	 */
	public void setConfiguration(String componentName, String componentCoreFieldName, String fieldLabel, String value,
			String subCCFieldName) {
		createEndPoint();
		getAuthToken();
		assertStatusCode(postConfigCall(componentName, componentCoreFieldName, subCCFieldName, fieldLabel, value));
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
	 * 
	 * @param fieldLabel
	 *            : regular fields
	 * @param componentName
	 *            : Component
	 * @param componentCoreFieldName
	 *            : Main item in component
	 * @param value
	 * @return
	 */

	private Response postConfigCall(String componentName, String componentCoreFieldName, String subCCFieldName,
			String fieldLabel, String value) {
		return apiCall.postCall(null,
				new SetUpConfiguration().getConfigJson(fieldLabel, componentName, componentCoreFieldName,
						subCCFieldName, value),
				endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
	}

	public void setUpDefaultParameters(String componentName, String componentCoreFieldName, String fieldLabel,
			String value, String subCCFieldName) {
		setUpParameters = new ConfigurationParameters();
		setUpParameters.setComponentCoreFieldName(componentCoreFieldName);
		setUpParameters.setComponentName(componentName);
		setUpParameters.setFieldLabel(fieldLabel);
		setUpParameters.setValue(value);
		setUpParameters.setSubCCFieldName(subCCFieldName);
	}

	public Response postReConfigCall() {
		return apiCall.postCall(null,
				new SetUpConfiguration().getConfigJson(setUpParameters.getFieldLabel(),
						setUpParameters.getComponentName(), setUpParameters.getComponentCoreFieldName(),
						setUpParameters.getSubCCFieldName(), setUpParameters.getValue()),
				endPoint + defaultUpdateEndPoint, "Authorization", "Bearer " + tokenString, null);
	}

}
