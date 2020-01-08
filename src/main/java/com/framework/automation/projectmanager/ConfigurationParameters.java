package com.framework.automation.projectmanager;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ConfigurationParameters {
      static Map<String,List<Map<String, String>>> defaultConfigurationParameters;
    
    /**
     * @return the defaultConfigurationParameters
     */
    public static Map<String,List<Map<String, String>>> getDefaultConfigurationParameters() {
        return defaultConfigurationParameters;
    }

    /**
     * @param defaultConfigurationParameters the defaultConfigurationParameters to set
     */
    public static void setDefaultConfigurationParameters(Map<String,List<Map<String, String>>> defaultConfigurationParameters) {
        ConfigurationParameters.defaultConfigurationParameters = defaultConfigurationParameters;
    }

    
   
}
