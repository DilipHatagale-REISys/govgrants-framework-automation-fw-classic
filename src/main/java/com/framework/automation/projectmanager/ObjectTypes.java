package com.framework.automation.projectmanager;

public enum ObjectTypes {
    PROGRAM("PG"),ANNOUNCEMENT("AN");
    private String acronym;

    ObjectTypes(String acronym) {
        this.acronym = acronym;
    }

    public String getAcronymForObjectType(){
        return acronym;
    }
}
