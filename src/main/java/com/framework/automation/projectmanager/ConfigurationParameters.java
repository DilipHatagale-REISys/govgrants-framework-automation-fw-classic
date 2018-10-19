package com.framework.automation.projectmanager;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.automation.rei.handlers.Properties_Logs;

public class ConfigurationParameters {
    Properties_Logs readProp = new Properties_Logs();

    String componentName, oldFieldValue, fieldLabel, value, newFieldValue,oldComponentCoreField,newComponentCoreField;
    String componentName_Program, oldFieldValue_Program, fieldLabel_Program, value_Program,newFieldValue_Program;
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

    
    
    
    public String getNewComponentCoreFieldName() {
        return newComponentCoreField;
    }
    
    public void setNewComponentCoreFieldName(String newComponentCoreField) {
        this.newComponentCoreField=newComponentCoreField;
    }
    
    public String getOldComponentCoreFieldName() {
        return oldComponentCoreField;
    }
    
    public void setOldComponentCoreFieldName(String oldComponentCoreField) {
        this.oldComponentCoreField=oldComponentCoreField;
    }
    
    public String getNewFieldValue() {
        return newFieldValue;
    }

    public void setNewFilterFieldValue(String newFieldValue) {
        this.newFieldValue = newFieldValue;
    }

    public String getComponentName() {
        return componentName;
    }

    public void setComponentName(String componentName) {
        this.componentName = componentName;
    }

    public String getOldFieldValue() {
        return oldFieldValue;
    }

    public void setOldFieldValue(String oldFieldValue) {
        this.oldFieldValue = oldFieldValue;
    }

    public String getFieldLabel() {
        return fieldLabel;
    }

    public void setFieldLabel(String fieldLabel) {
        this.fieldLabel = fieldLabel;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) throws IOException {
           if (value.contains("govgrants_config")) {
            String[] splittedValue = value.split(":");
            this.value = readProp.ReadPropertyFile("govgrants_Config.properties", splittedValue[1]);
        } else {
            this.value = value;
        }
    }

   
    public String getComponentName_Program() {
        return componentName_Program;
    }

    public void setComponentName_Program(String componentName_Program) {
        this.componentName_Program = componentName_Program;
    }

    public String getOldFieldValue_Program() {
        return oldFieldValue_Program;
    }

    public void setOldFieldValue_Program(String oldFieldValue_Program) {
        this.oldFieldValue_Program = oldFieldValue_Program;
    }

    public String getFieldLabel_Program() {
        return fieldLabel_Program;
    }

    public void setFieldLabel_Program(String fieldLabel_Program) {
        this.fieldLabel_Program = fieldLabel_Program;
    }

    public String getValue_Program() {
        return value_Program;
    }

    public void setValue_Program(String value_Program) {
        this.value_Program = value_Program;
    }

    public String getNewFieldValue_Program() {
        return newFieldValue_Program;
    }

    public void setNewFieldValue_Program(String newFieldValue_Program) {
        this.newFieldValue_Program = newFieldValue_Program;
    }
}
