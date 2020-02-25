@charts-EnhancedCharts-component @regression
Feature: Charts and Enhanced Charts Component Scenarios
  Test all charts/enhanced charts component based scenarios
  As a configuration manager i make different configurational changes in charts/enhanced charts component and will validate them.

  @34667    @validateChartDisplayedInCorrectPhase-gAnnouncement
  Scenario: Changing chart phase config to Annoucnement for 'AnnouncementByAdminBureauUnit' chart in configuratin and validating inside annoucenment
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Charts Config         | Phase Config | ApiGeneratedId:1  | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue    |
      | Phase Config:General  | Tab Display Label | Announcements    | FundingOpportunity |                           |                               |
      | Phase Config:General  | Tab Display Label | Planning         | GrantorPlanning    |                           |                               |
      | Charts Config         | Phase Config      | ApiGeneratedId:0 | GrantorPlanning    | Name                      | AnnouncementByAdminBureauUnit |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see "AnnouncementByAdminBureauUnit" displayed as chart title

  @34668    @validateAllDataHeaders-gPlannging
  Scenario: Changing chart menu button config to "Funding Opportunity Automation" for 'AnnouncementByAdminBureauUnit' chart  in configuratin and validating inside planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue    | filterId         |
      | Charts Details Config | All data table header | Funding Opportunity1 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Details Config | All data table header | Funding Opportunity Automation | GrantorPlanning    | Name                      | CD-0147                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on menu icon of chart "AnnouncementByAdminBureauUnit" with title "Menu"
    When I select "Show All Data" from chart menu of chart "AnnouncementByAdminBureauUnit"
    Then I see "Funding Opportunity Automation" displayed in modal

  @34977    @validateDisablingChartLegends-gPlannging @smoke
  Scenario: Disable chart legends for 'AnnouncementByAdminBureauUnit' chart in configuratin and validating inside planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Charts Details Config | Disable Legend | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Details Config | Disable Legend | true          | GrantorPlanning    | Name                      | CD-0147                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I do not see chart legends are displayed for chart/enhanced Charts "AnnouncementByAdminBureauUnit"

  @34981    @validateX-axisLabel-gPlannging @smoke
  Scenario: Change chart x-axis label for 'Funding Sources by Total Amount' chart in configuratin and validating inside planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue      | filterId         |
      | Charts Details Config | X-Axis Label | Total Allocated Amount | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Details Config | X-Axis Label | Total Allocated Amount Automation | GrantorPlanning    | Name                      | CD-0159                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Total Allocated Amount Automation" for chart "FundingSourcesbyTotalAmount"

  @34985    @validateX-axisPrefix-gPlannging
  Scenario: Change chart x-axis prefix as $ for 'Funding Sources by Total Amount' chart in configuratin and validating inside planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Details Config | X-Axis Prefix |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Details Config | X-Axis Prefix | $             | GrantorPlanning    | Name                      | CD-0159                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "$" for chart "FundingSourcesbyTotalAmount"

  @35086    @validateXFormattedNubers-gPlannging
  Scenario: Enable x-formatted numbers for 'Funding Sources by Total Amount' chart in configuratin and validating inside planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Charts Details Config | X Formatted Number | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Details Config | X Formatted Number | true          | GrantorPlanning    | Name                      | CD-0159                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see ",000" for chart "FundingSourcesbyTotalAmount"

  @34984    @validateX-axisSuffix-gPlannging
  Scenario: Change chart x-axis suffix as $ for 'Funding Sources by Total Amount' chart in configuratin and validating inside planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Details Config | X Axis Suffix |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Details Config | X Axis Suffix | $             | GrantorPlanning    | Name                      | CD-0159                    |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "$" for chart "FundingSourcesbyTotalAmount"

  @70853    @validateActiveFieldAtCharts-gAnnouncement-EnhancedCharts
  Scenario: Validating enhanced charts is getting displayed on UI while making changes of boolean field Active at configuration page -gAnnouncement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true          | FundingOpportunity | Name                      | Enhanced Pie chart         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see charts with id "EnhancedPiechartId" displayed

  @70854    @validateTitleFieldAtCharts-gAnnouncement-EnhancedCharts
  Scenario: Changing chart title for 'EnhancedPiechartId' enhanced chart in configuration and validating inside planning-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Title     | Enhanced Pie      | ApiGeneratedId:0 |
      | Charts Config         | Active    | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Title     | Automation Enhanced Pie | FundingOpportunity | Name                      | Enhanced Pie chart         |
      | Charts Config         | Active    | true                    | FundingOpportunity | Name                      | Enhanced Pie chart         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see "Automation Enhanced Pie" displayed as chart title

  @70855    @validateChartTypeFieldAtCharts-gAnnouncement-EnhancedCharts
  Scenario: Changing value of chart type to pie for 'EnhancedPiechartId' enhanced chart in configuration and validating inside planning-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Charts Config         | Chart Type | Pie               | ApiGeneratedId:0 |
      | Charts Config         | Active     | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Chart Type | Pie           | FundingOpportunity | Name                      | Enhanced Pie chart         |
      | Charts Config         | Active     | true          | FundingOpportunity | Name                      | Enhanced Pie chart         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see charts "EnhancedPiechartId" with type as "highcharts-point"

  @70856    @validateDisableLegendsFieldsWithFalse-gAnnouncement-EnhancedCharts
  Scenario: validate disable legends fields is working or not by viewing bottom element of charts is getting displayed on unchecking checkbox
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Charts Config         | Disable Legend |                   | ApiGeneratedId:0 |
      | Charts Config         | Active         | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Disable Legend | false         | FundingOpportunity | Name                      | Enhanced Pie chart         |
      | Charts Config         | Active         | true          | FundingOpportunity | Name                      | Enhanced Pie chart         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see chart legends are displayed for chart/enhanced Charts "EnhancedPiechart"

  @70857    @validateDisableLegendsFieldsWithTrue-gAnnouncement-EnhancedCharts
  Scenario: validate disable legends fields is working or not by checking bottom element of charts is getting displayed on checking checkbox
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Charts Config         | Disable Legend | false             | ApiGeneratedId:0 |
      | Charts Config         | Active         | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Disable Legend | true          | FundingOpportunity | Name                      | Enhanced Pie chart         |
      | Charts Config         | Active         | true          | FundingOpportunity | Name                      | Enhanced Pie chart         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I do not see chart legends are displayed for chart/enhanced Charts "EnhancedPiechart"

  @70869    @validateY-axisLabel-gAnnouncement-EnhancedCharts
  Scenario Outline: Change chart y-axis label for 'EnhancedPiechartId' enhanced chart from configuration and validating inside Announcement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Charts Config         | Y-Axis Label |                   | ApiGeneratedId:0 |
      | Charts Config         | Active       | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Y-Axis Label | <EchartY-Axix_Text> | FundingOpportunity | Name                      | Enhanced Pie chart         |
      | Charts Config         | Active       | true                | FundingOpportunity | Name                      | Enhanced Pie chart         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I hovering mouse on enhanced charts id "EnhancedPiechartId" and charts type "highcharts-point"
    And I pause execution for "2" seconds
    Then I see "<EchartY-Axix_Text>" shown inside enhanced charts on hover

    Examples:
      | EchartY-Axix_Text             |
      | Automation Announcement count |

  @70876    @validateEditDataTableQueryforAllDataFieldFromBurgerIcon-gAnnouncement-EnhancedCharts
  Scenario Outline: Validate all data from 'EnhancedPiechartId'
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | false                      | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | FundingOpportunity | Name                      | Enhanced Pie chart         |
      | Charts Config         | Active                         | true                   | FundingOpportunity | Name                      | Enhanced Pie chart         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Enhanced Pie" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Pie"
    Then I see the following rows under the following columns in table with id "EnhancedPiechartIdrecordsModal" :
      | Announcement Title | Status    |
      | Announcement171001 | Published |

    Examples:
      | default_Data_Table_Query                                                                                           | new_Data_Table_Query                                                                                                                         |
      | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c where RecordType.Name='Grantor' | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c where RecordType.Name='Grantor' AND Status__c='Published' |

  @70877    @validateEditDataTableQueryforAllDataFieldFromEnhancedViewIcon-gAnnouncement-EnhancedCharts
  Scenario Outline: Validate expected status from enhanced chart modal(show all data from enhanced view icon)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | false                      | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | FundingOpportunity | Name                      | Enhanced Pie chart         |
      | Charts Config         | Active                         | true                   | FundingOpportunity | Name                      | Enhanced Pie chart         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Enhanced Pie" with title "Enhanced View"
    When I click modal button "Show All Data"
    Then I see the following rows under the following columns in table with id "EnhancedPiechartIdrecordsModal" :
      | Announcement Title | Status    |
      | Announcement171001 | Published |

    Examples:
      | default_Data_Table_Query                                                                                           | new_Data_Table_Query                                                                                                                         |
      | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c where RecordType.Name='Grantor' | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c where RecordType.Name='Grantor' AND Status__c='Published' |

  @71020    @validateDataTableQueryForSelectedDataField-gAnnouncement-EnhancedCharts @wip
  Scenario Outline: Validate expected values as per query provided inside fields 'Data Table Query for selected data'
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                           | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For Selected Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                              | false                      | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                           | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For Selected Data) | <new_Data_Table_Query> | FundingOpportunity | Name                      | Enhanced Pie chart         |
      | Charts Config         | Active                              | true                   | FundingOpportunity | Name                      | Enhanced Pie chart         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I pause execution for "5" seconds
    And I click on enhanced charts id "EnhancedPiechartId" with color "LightBlue"
    Then I see the following rows under the following columns in table with id "EnhancedPiechartIdrecordsModal" :
      | Announcement Title     | Announcement Type |
      | Test application..1234 | Competitive       |
    Then I collect all the soft asserts

    Examples:
      | default_Data_Table_Query                                                                                                                                     | new_Data_Table_Query                                                                                                                                         |
      | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c Where AnnouncementType__c = '{!XAxisValue}' And RecordType.Name='Grantor' | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c Where AnnouncementType__c = '{!XAxisValue}' And RecordType.Name='Grantor' |

  @70880    @validateElementsOnModalComingOnEnhancedViewClick-EnhancedCharts
  Scenario: Validate Enhanced chart modal details after closing show all data modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true          | FundingOpportunity | Name                      | Enhanced Pie chart         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Enhanced Pie" with title "Enhanced View"
    When I click modal button "Show All Data"
    When I click modal button "Close"
    Then I see chart legends are displayed for chart/enhanced Charts "EnhancedPiechart"

  @70891    @validateY-axisPrefix-gAnnouncement-EnhancedCharts
  Scenario Outline: Change chart y-axis prefix for 'EnhancedPiechartId' enhanced chart from configuration and validating inside Announcement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Y Axis Prefix |                   | ApiGeneratedId:0 |
      | Charts Config         | Active        | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Y Axis Prefix | <EchartY-Axix_Text> | FundingOpportunity | Name                      | Enhanced Pie chart         |
      | Charts Config         | Active        | true                | FundingOpportunity | Name                      | Enhanced Pie chart         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I hovering mouse on enhanced charts id "EnhancedPiechartId" and charts type "highcharts-point"
    And I pause execution for "2" seconds
    Then I see "<EchartY-Axix_Text>" shown inside enhanced charts on hover

    Examples:
      | EchartY-Axix_Text        |
      | Automation Y Axis Prefix |

  @70892    @validateY-axisSuffix-gAnnouncement-EnhancedCharts
  Scenario Outline: Change chart y-axis suffix for 'EnhancedPiechartId' enhanced chart from configuration and validating inside Announcement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Y Axis Suffix |                   | ApiGeneratedId:0 |
      | Charts Config         | Active        | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Y Axis Suffix | <EchartY-Axix_Text> | FundingOpportunity | Name                      | Enhanced Pie chart         |
      | Charts Config         | Active        | true                | FundingOpportunity | Name                      | Enhanced Pie chart         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I hovering mouse on enhanced charts id "EnhancedPiechartId" and charts type "highcharts-point"
    And I pause execution for "2" seconds
    Then I see "<EchartY-Axix_Text>" shown inside enhanced charts on hover

    Examples:
      | EchartY-Axix_Text          |
      | Automation Y Axis Suffix $ |

  @70896    @validateActiveField-gHOME-EnhancedDualAxesCharts
  Scenario: Validating dual axes chart is getting displayed on UI while making changes of boolean field Active for dual axes chart at configuration page -gHOME
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true          | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see charts with id "EnhancedDualAxesId" displayed

  @70897    @validateTitleFieldAtCharts-gHOME-EnhancedDualAxesCharts
  Scenario: Changing chart title for 'EnhancedDualAxesId' enhanced dual axes chart in configuration and validating inside home-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue  | filterId         |
      | Charts Config         | Title     | Enhanced Dual Axes | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Title     | Automation Enhanced Dual Axes Chart | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "Automation Enhanced Dual Axes Chart" displayed as chart title

  @70899    @validateChartTypeFieldAtCharts-gHOME-EnhancedDualAxesCharts
  Scenario: Changing value of chart type to dual axes for 'EnhancedDualAxesId' enhanced dual axes chart in configuration and validating inside planning-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Charts Config         | Chart Type | Dual axes         | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Chart Type | Dual axes     | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see charts "EnhancedDualAxesId" with type as "highcharts-tracker-line"

  @70981    @validateDisableLegendsFieldsWithFalse-gHOME-EnhancedDualAxesCharts
  Scenario: validate disable legends fields of 'EnhancedDualAxesId' is working or not while unchecking checkbox of Disable Legend Field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Charts Config         | Disable Legend |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Disable Legend | false         | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see chart legends are displayed for chart/enhanced Charts "EnhancedDualAxes"

  @70982    @validateDisableLegendsFieldsWithTrue-gHOME-EnhancedDualAxesCharts
  Scenario: validate disable legends fields of 'EnhancedDualAxesId' is working or not while checking checkbox of Disable Legend Field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Charts Config         | Disable Legend | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Disable Legend | true          | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I do not see chart legends are displayed for chart/enhanced Charts "EnhancedDualAxes"

  @70996    @validateX-axisLabelField-gHOME-EnhancedDualAxesCharts
  Scenario: Change chart x-axis label for 'EnhancedDualAxesId' chart in configuration and validating inside HOME
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue      | filterId         |
      | Charts Config         | X-Axis Label | Internal Organizations | ApiGeneratedId:0 |
      | Charts Config         | Chart Type   | Dual axes              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | X-Axis Label | AutomationInternalOrganizations | GrantorHome        | Name                      | Enhanced Dual Axes         |
      | Charts Config         | Chart Type   | Dual axes                       | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "AutomationInternalOrganizations" for chart "EnhancedDualAxes"

  @71000    @validateY-axisLabelField-gHOME-EnhancedDualAxesCharts
  Scenario: Change chart y-axis label for 'EnhancedDualAxesId' chart in configuration and validating inside HOME
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Charts Config         | Y-Axis Label | Count             | ApiGeneratedId:0 |
      | Charts Config         | Chart Type   | Dual axes         | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Y-Axis Label | Automation-Y-Axes-Label | GrantorHome        | Name                      | Enhanced Dual Axes         |
      | Charts Config         | Chart Type   | Dual axes               | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "Automation-Y-Axes-Label" for chart "EnhancedDualAxes"

  @71006    @validateZ-axisLabelField-gHOME-EnhancedDualAxesCharts
  Scenario: Change chart z-axis label for 'EnhancedDualAxesId' chart in configuration and validating inside HOME
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue        | filterId         |
      | Charts Config         | Z-Axis Label | Total Grant Award Amount | ApiGeneratedId:0 |
      | Charts Config         | Chart Type   | Dual axes                | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Z-Axis Label | Automation-Z-Axes-Label | GrantorHome        | Name                      | Enhanced Dual Axes         |
      | Charts Config         | Chart Type   | Dual axes               | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "Automation-Z-Axes-Label" for chart "EnhancedDualAxes"

  @71009    @validateElementsOnModalComingOnEnhancedViewClick-gHOME-EnhancedDualAxesCharts
  Scenario: Validate Enhanced Dual Axes chart modal details after closing show all data modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Charts Config         | Y-Axis Label | Count             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue           | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Y-Axis Label | Automation-Y-Axes-Label | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Dual Axes" with title "Enhanced View"
    When I click modal button "Show All Data"
    When I click modal button "Close"
    Then I see chart legends are displayed for chart/enhanced Charts "EnhancedDualAxes"

  @71025    @validateDataTableQueryforAllDataFieldFromBurgerIcon-gHOME-EnhancedDualAxesCharts
  Scenario Outline: Validate expected result as no of record rendered as per query provided inside 'Data Table Query(for all data)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | false                      | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | GrantorHome        | Name                      | Enhanced Dual Axes         |
      | Charts Config         | Active                         | true                   | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Dual Axes" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Dual Axes"
    Then I see on modal total records count is same as total row of table id "EnhancedDualAxesIdrecordsModal" and table name "flextable"

    Examples:
      | default_Data_Table_Query                                                                                                                                | new_Data_Table_Query                                                                                                                                             |
      | SELECT TotalGrantAwardAmount__c ,Grant__r.InternalOrganization__r.Name FROM Award__c where Grant__r.InternalOrganization__r.recordtype.name='recipient' | SELECT TotalGrantAwardAmount__c ,Grant__r.InternalOrganization__r.Name  FROM Award__c where Grant__r.InternalOrganization__r.recordtype.name='recipient' limit 5 |

  @71032    @validateDataTableQueryforAllDataFieldFromEnhancedViewIcon-gHOME-EnhancedDualAxesCharts
  Scenario Outline: Validate expected result as no of record rendered as per query provided inside 'Data Table Query(for all data from enhanced view icon)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Dual Axes" with title "Enhanced View"
    When I click modal button "Show All Data"
    Then I see on modal total records count is same as total row of table id "EnhancedDualAxesIdrecordsModal" and table name "flextable"

    Examples:
      | default_Data_Table_Query                                                                                                                                 | new_Data_Table_Query                                                                                                                                             |
      | SELECT TotalGrantAwardAmount__c ,Grant__r.InternalOrganization__r.Name  FROM Award__c where Grant__r.InternalOrganization__r.recordtype.name='recipient' | SELECT TotalGrantAwardAmount__c ,Grant__r.InternalOrganization__r.Name  FROM Award__c where Grant__r.InternalOrganization__r.recordtype.name='recipient' limit 5 |

  @71038    @validateElementsOnModalComingOnEnhancedViewClick-EnhancedDualAxesCharts
  Scenario: Validate Enhanced Dual Axes chart modal details after closing show all data modal
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Dual Axes" with title "Enhanced View"
    When I click modal button "Show All Data"
    When I click modal button "Close"
    Then I see chart legends are displayed for chart/enhanced Charts "EnhancedDualAxes"

  @71041    @validateDataTableQueryForSelectedDataField-gHOME-EnhancedDualAxesCharts @wip
  Scenario Outline: Validate expected values as per query provided inside fields 'Data Table Query for selected data'
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                           | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For Selected Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                              | false                      | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                           | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For Selected Data) | <new_Data_Table_Query> | FundingOpportunity | Name                      | Enhanced Pie chart         |
      | Charts Config         | Active                              | true                   | FundingOpportunity | Name                      | Enhanced Pie chart         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I pause execution for "5" seconds
    And I click on enhanced charts id "EnhancedPiechartId" with color "LightBlue"
    Then I see the following rows under the following columns in table with id "EnhancedPiechartIdrecordsModal" :
      | Announcement Title     | Announcement Type |
      | Test application..1234 | Competitive       |

    Examples:
      | default_Data_Table_Query                                                                                                                                     | new_Data_Table_Query                                                                                                                                         |
      | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c Where AnnouncementType__c = '{!XAxisValue}' And RecordType.Name='Grantor' | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c Where AnnouncementType__c = '{!XAxisValue}' And RecordType.Name='Grantor' |
