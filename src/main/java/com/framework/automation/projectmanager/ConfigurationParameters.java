package com.framework.automation.projectmanager;

import java.util.List;
import java.util.Map;

public class ConfigurationParameters {
      static List<Map<String, String>> defaultConfigurationParameters;
    
    /**
     * @return the defaultConfigurationParameters
     */
    public static List<Map<String, String>> getDefaultConfigurationParameters() {
        return defaultConfigurationParameters;
    }

    /**
     * @param defaultConfigurationParameters the defaultConfigurationParameters to set
     */
    public static void setDefaultConfigurationParameters(List<Map<String, String>> defaultConfigurationParameters) {
        ConfigurationParameters.defaultConfigurationParameters = defaultConfigurationParameters;
    }

    
   
}
