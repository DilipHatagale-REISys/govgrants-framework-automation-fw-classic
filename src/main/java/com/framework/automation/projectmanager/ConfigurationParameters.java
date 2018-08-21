package com.framework.automation.projectmanager;

public class ConfigurationParameters {
    public String getComponentName() {
        return componentName;
    }

    public void setComponentName(String componentName) {
        this.componentName = componentName;
    }

    public String getComponentCoreFieldName() {
        return componentCoreFieldName;
    }

    public void setComponentCoreFieldName(String componentCoreFieldName) {
        this.componentCoreFieldName = componentCoreFieldName;
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

    public void setValue(String value) {
        this.value = value;
    }

    String componentName,componentCoreFieldName,fieldLabel,value;
}
