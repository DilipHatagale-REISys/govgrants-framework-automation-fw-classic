package com.framework.automation.projectmanager;

import com.google.gson.JsonObject;

public class test {

    public static void main(String[] args) {
        String payload="{\"sObjectAPIName\" : \"'%s'\",\"fieldMapStr\" : \"{\\\"Id\\\":\\\"'%s'\\\",\\\"Name\\\":\\\"'%s'\\\"}\"}";
        
        new ProjectWebServices().setConfiguration("NAME", "SIDEBAR", "GrantorHome", "Automation");
    }

}
