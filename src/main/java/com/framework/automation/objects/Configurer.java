package com.framework.automation.objects;

import io.cucumber.core.api.TypeRegistry;
import io.cucumber.core.api.TypeRegistryConfigurer;
import io.cucumber.datatable.DataTableType;
import io.cucumber.datatable.TableEntryTransformer;

import java.util.Locale;
import java.util.Map;

public class Configurer implements TypeRegistryConfigurer {

    @Override
    public void configureTypeRegistry(TypeRegistry registry) {

        registry.defineDataTableType(new DataTableType(ConfigurationDataTable.class, new TableEntryTransformer<ConfigurationDataTable>() {
            @Override
            public ConfigurationDataTable transform(Map<String, String> entry) {
                return new ConfigurationDataTable(entry.get("configurationCategory"), entry.get("fieldName"), entry.get("fieldNewValue"), entry.get("fieldNewValue"), entry.get("coreComponentField"), entry.get("coreComponentSubFieldValue"));
            }
        }));
    }

    @Override
    public Locale locale() {
        return Locale.ENGLISH;
    }
}
