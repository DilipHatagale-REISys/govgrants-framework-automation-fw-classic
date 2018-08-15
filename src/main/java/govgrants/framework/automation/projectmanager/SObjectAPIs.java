package govgrants.framework.automation.projectmanager;

enum SObjectAPIs {
    GNT__PhaseConfig__c, GNT__AccordionHeader__c("a011500000Ynrl5"), GNT__Abbreviation__c, GNT__Active__c, 
    GNT__AvailableForProfiles__c, GNT__DefaultThemeName__c, GNT__InternalUniqueID__c, 
    GNT__Label__c, GNT__LogoDocumentName__c, GNT__ReportsFolderName__c, GNT__SelectedLogoDocumentName__c, 
    GNT__Sequence__c, GNT__URL__c, Name, GNT__RecordTypeJSON__c, GNT__CustomAppName__c, GNT__GroupName__c, 
    GNT__TabName__c, GNT__PhaseType__c, GNT__SidebarComponentSequence__c, GNT__IsPhase__ccGNT__ReportFolderName__c,
    GNT__SelectedByDefault__c, GNT__TabIconCSS__c, GNT__EnableMenu__c, GNT__EnableBIAnalytics__c, 
    GNT__SidebarBIAnalyticsMenuLabel__c, GNT__EnableSidebarTaskMenu__c, GNT__SidebarTaskMenuLabel__c, 
    GNT__EnableSearch__c, GNT__SidebarSearchLabel__c, GNT__EnableRecentlyViewed__c, GNT__SidebarRecentlyViewedLabel__c, 
    GNT__EnableExternalLinks__c, GNT__SidebarExternalLinksLabel__c, GNT__Enable_Technical_Support__c, 
    GNT__SidebarTechnicalSupportLabel__c;
    
    String id;

    /**
     * constructor to handle objects/fields without any id
     */
    SObjectAPIs() {
        
    }
    
    /**
     * Set up enum id
     * @param objectId
     */
    SObjectAPIs(String objectId) {
        id=objectId;
    }
    
    /**
     * get requried id
     * @return
     */
    public String getId() {
        return id;
    }
}

