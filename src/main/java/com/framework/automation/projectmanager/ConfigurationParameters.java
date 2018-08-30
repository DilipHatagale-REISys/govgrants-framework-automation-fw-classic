package com.framework.automation.projectmanager;

import java.io.IOException;

import com.automation.rei.handlers.Properties_Logs;

public class ConfigurationParameters {
    Properties_Logs readProp = new Properties_Logs();

    public String getNewFieldValue() {
        return newFieldValue;
    }

    public void setNewFieldValue(String newFieldValue) {
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

    String componentName, oldFieldValue, fieldLabel, value, newFieldValue;
}
