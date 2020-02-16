@charts-EnhancedCharts-component @regression
Feature: Charts and Enhanced Charts Component Scenarios
  Test all charts/enhanced charts component based scenarios
  As a configuration manager i make different configurational changes in charts/enhanced charts component and will validate them.

  @34666    @validateTitleField-gplanning
  Scenario: Changing chart title for 'AnnouncementByAdminBureauUnit' chart in configuration and validating inside planning-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue             | filterId         |
      | Charts Config         | Title     | AnnouncementByAdminBureauUnit | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue    |
      | Charts Config         | Title     | Funding Opportunities for Automation | GrantorPlanning    | Name                      | AnnouncementByAdminBureauUnit |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Funding Opportunities for Automation" displayed as chart title

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
    And I click on menu icon of chart "AnnouncementByAdminBureauUnit"
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
    Then I see chart legends are displayed for chart/enhanced Charts "AnnouncementByAdminBureauUnit"

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
  Scenario: validate disable legends fields is working or not by checking bottom element of charts is getting displayed on unchecking checkbox
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
    Then I do not see chart legends are displayed for chart/enhanced Charts "EnhancedPiechartId"

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

  @70876    @validateEditDataTableQueryforAllDataField-gAnnouncement-EnhancedCharts @wip
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
    And I click on menu icon of chart "Enhanced Pie"
    When I select "Show All Data" from chart menu of chart "Enhanced Pie"
    Then I see the following rows under the following columns in table with id "EnhancedPiechartIdrecordsModal" :
      | Announcement Title | Status    |
      | Announcement171001 | Published |

    Examples:
      | default_Data_Table_Query                                                                                           | new_Data_Table_Query                                                                                                                         |
      | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c where RecordType.Name='Grantor' | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c where RecordType.Name='Grantor' AND Status__c='Published' |

  @70877    @validateEditDataTableQueryforAllDataField-gAnnouncement-EnhancedCharts @wip
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
    And I click on menu icon of chart "Enhanced Pie"
    When I select "Show All Data" from chart menu of chart "Enhanced Pie"
    Then I see the following rows under the following columns in table with id "EnhancedPiechartIdrecordsModal" :
      | Announcement Title | Status    |
      | Announcement171001 | Published |

    Examples:
      | default_Data_Table_Query                                                                                           | new_Data_Table_Query                                                                                                                                                 |
      | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c where RecordType.Name='Grantor' | SELECT Name,AnnouncementName__c,AnnouncementType__c,TotalCommittedAmount__c,Status__c FROM Announcement__c where RecordType.Name='Grantor' AND Status__c='Published' |


