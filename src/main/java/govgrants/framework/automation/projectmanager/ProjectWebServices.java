package govgrants.framework.automation.projectmanager;


import com.automation.rei.controller.EnvironmentFetcher;
import com.automation.rei.webservices.RestfulWebServices;
import com.jayway.restassured.response.Response;

public class ProjectWebServices {
    RestfulWebServices apiCall = new RestfulWebServices();
    private static String endPoint = EnvironmentFetcher.environment;
    String parameter;
    private String defaultEndPoint = "/services/apexrest/frameworkAPI";
    private String defaultEndPointGetToken = "/services/oauth2/token?grant_type=password&client_secret=7608231485378593656&client_id=3MVG91ftikjGaMd8E01oyLzW0qhdCcSTnpVVwmMdo3H_C6vbhroOOpEF4C.54CXCiOi5SQFyN.a6Ze8NCAcSa&username=pankaj@ggp.test5&password=test@123";
    private static String tokenString;

    /**
     * Handle all Api calls for deletion based on pathway
     * 
     * @param pathway
     */
    public void deleteUploadedBatchData(String pathway) {
        getAuthToken();
    }

    /**
     * get token for authentication of Delete request
     */
    private void getAuthToken() {
        Response response = apiCall.postCall(null, endPoint + defaultEndPointGetToken, null, null, null);
        this.tokenString = response.body().jsonPath().getString("access_token");
    }

    public void createEndPoint() {
        this.endPoint = EnvironmentFetcher.environment;
    }

    private void assertStatusCode(Response response) {
        response.then().statusCode(200);
    }
    private void postConfigCall(String fieldName,String componentName,String value) {    
        apiCall.postCall(new SetUpConfiguration().getConfigJson(fieldName, componentName, value), endPoint+defaultEndPoint, "Authorization", "Bearer " + tokenString, null);
    }
}
