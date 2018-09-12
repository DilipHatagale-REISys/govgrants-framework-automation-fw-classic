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
    String componentName_Program, oldFieldValue_Program, fieldLabel_Program, value_Program,newFieldValue_Program;

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
