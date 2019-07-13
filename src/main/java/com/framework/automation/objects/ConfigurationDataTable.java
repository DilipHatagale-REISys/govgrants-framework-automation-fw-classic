package com.framework.automation.objects;

public class ConfigurationDataTable {

    public ConfigurationDataTable(String configurationCategory, String fieldName, String fieldNewValue, String coreComponentField, String coreCOmponentSubFieldName, String coreComponentSubFieldValue) {
        this.configurationCategory = configurationCategory;
        this.fieldName = fieldName;
        this.fieldNewValue = fieldNewValue;
        this.coreComponentField = coreComponentField;
        this.coreCOmponentSubFieldName = coreCOmponentSubFieldName;
        this.coreComponentSubFieldValue = coreComponentSubFieldValue;
    }

    public String getConfigurationCategory() {
        return configurationCategory;
    }

    public void setConfigurationCategory(String configurationCategory) {
        this.configurationCategory = configurationCategory;
    }

    public String getFieldName() {
        return fieldName;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }

    public String getFieldNewValue() {
        return fieldNewValue;
    }

    public void setFieldNewValue(String fieldNewValue) {
        this.fieldNewValue = fieldNewValue;
    }

    public String getCoreComponentField() {
        return coreComponentField;
    }

    public void setCoreComponentField(String coreComponentField) {
        this.coreComponentField = coreComponentField;
    }

    public String getCoreCOmponentSubFieldName() {
        return coreCOmponentSubFieldName;
    }

    public void setCoreCOmponentSubFieldName(String coreCOmponentSubFieldName) {
        this.coreCOmponentSubFieldName = coreCOmponentSubFieldName;
    }

    public String getCoreComponentSubFieldValue() {
        return coreComponentSubFieldValue;
    }

    public void setCoreComponentSubFieldValue(String coreComponentSubFieldValue) {
        this.coreComponentSubFieldValue = coreComponentSubFieldValue;
    }

    private String configurationCategory,fieldName,fieldNewValue,coreComponentField,coreCOmponentSubFieldName,coreComponentSubFieldValue;
}
