@charts-Enhanced @Charts-component @regression-test5 @enhancedCharts
Business Need: Charts and Enhanced Charts Component Scenarios
  Test all charts/enhanced charts component based scenarios
  As a configuration manager i make different configurational changes in charts/enhanced charts component and will validate them.

  @34667    @validateChartDisplayedInCorrectPhase-gAnnouncement
  Scenario: Changing chart phase config to Annoucnement for 'AnnouncementByAdminBureauUnit' chart in configuratin and validating inside annoucenment
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Charts Config         | Active       | false             | ApiGeneratedId:0 |
      | Charts Config         | Phase Config | ApiGeneratedId:2  | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue    |
      | Charts Config         | Active            | true             | GrantorPlanning    | Name                      | AnnouncementByAdminBureauUnit |
      | Phase Config:General  | Tab Display Label | Announcements    | FundingOpportunity |                           |                               |
      | Phase Config:General  | Tab Display Label | Planning         | GrantorPlanning    |                           |                               |
      | Charts Config         | Phase Config      | ApiGeneratedId:1 | GrantorPlanning    | Name                      | AnnouncementByAdminBureauUnit |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see "AnnouncementByAdminBureauUnit" displayed as chart title

  @34668    @validateAllDataHeaders-gPlannging @training
  Scenario: Changing chart menu button config to "Funding Opportunity Automation" for 'AnnouncementByAdminBureauUnit' chart  in configuratin and validating inside planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue    | filterId         |
      | Charts Details Config | All data table header | Funding Opportunity1 | ApiGeneratedId:0 |
      | Charts Config         | Active                | false                | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue    |
      | Charts Details Config | All data table header | Funding Opportunity Automation | GrantorPlanning    | Name                      | CD-0147                       |
      | Charts Config         | Active                | true                           | GrantorPlanning    | Name                      | AnnouncementByAdminBureauUnit |
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
      | Charts Config         | Active         | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue    |
      | Charts Details Config | Disable Legend | true          | GrantorPlanning    | Name                      | CD-0147                       |
      | Charts Config         | Active         | true          | GrantorPlanning    | Name                      | AnnouncementByAdminBureauUnit |
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
    Then I see "Total Allocated Amount Automation" at axis "highcharts-yaxis" for chart "FundingSourcesbyTotalAmount"

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
    Then I see "$" at axis "highcharts-yaxis" for chart "FundingSourcesbyTotalAmount"

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
    Then I see "$" at axis "highcharts-yaxis" for chart "FundingSourcesbyTotalAmount"

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
    Then I see charts with id "---program:-:EnhancedPiechartID---" displayed

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
    Then I see charts "---program:-:EnhancedPiechartID---" with type as "highcharts-point"

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

  @71020    @validateDataTableQueryForSelectedDataField-gAnnouncement-EnhancedPieCharts
  Scenario Outline: Validate expected values as per query provided inside fields 'Data Table Query for selected data' - enhanced pie chart
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
    And I click on enhanced charts id "---program:-:EnhancedPiechartID---"
    And I pause execution for "10" seconds
    Then I see the following rows under the following columns in table with id "---program:-:EnhancedPiechartModalID---" :
      | Announcement Title                       | Announcement Type         |
      | Sole Source/Formula grants verification  | Sole Source/Formula       |
      |Sole Source/Formula announcement..        |Sole Source/Formula        |

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
    And I pause execution for "10" seconds
    When I hovering mouse on enhanced charts id "---program:-:EnhancedPiechartID---" and charts type "highcharts-point"
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
    And I pause execution for "10" seconds
    When I hovering mouse on enhanced charts id "---program:-:EnhancedPiechartID---" and charts type "highcharts-point"
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
    Then I see charts with id "---program:-:EnhancedDualAxesID---" displayed

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
    Then I see charts "---program:-:EnhancedDualAxesID---" with type as "highcharts-tracker-line"

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
    Then I see "AutomationInternalOrganizations" at axis "highcharts-xaxis" for chart "EnhancedDualAxes"

  @71000    @validateY-axisLabelField-gHOME-EnhancedDualAxesCharts
  Scenario: Change chart y-axis label for 'EnhancedDualAxesId' chart in configuration and validating inside HOME
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Charts Config         | Y-Axis Label | Count             | ApiGeneratedId:0 |
      | Charts Config         | Chart Type   | Dual axes         | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Y-Axis Label | Automation    | GrantorHome        | Name                      | Enhanced Dual Axes         |
      | Charts Config         | Chart Type   | Dual axes     | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "Automation" at axis "highcharts-yaxis" for chart "EnhancedDualAxes"

  @71006    @validateZ-axisLabelField-gHOME-EnhancedDualAxesCharts
  Scenario: Change chart z-axis label for 'EnhancedDualAxesId' chart in configuration and validating inside HOME
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue        | filterId         |
      | Charts Config         | Z-Axis Label | Total Grant Award Amount | ApiGeneratedId:0 |
      | Charts Config         | Chart Type   | Dual axes                | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Z-Axis Label | Automation    | GrantorHome        | Name                      | Enhanced Dual Axes         |
      | Charts Config         | Chart Type   | Dual axes     | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "Automation" at axis "highcharts-yaxis" for chart "EnhancedDualAxes"

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
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | GrantorHome        | Name                      | Enhanced Dual Axes         |
      | Charts Config         | Active                         | true                   | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Dual Axes" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Dual Axes"
    Then I see on modal total records count is same as total row of table id "---program:-:EnhancedDualAxesModalID---" and table name "flextable"

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
    Then I see on modal total records count is same as total row of table id "---program:-:EnhancedDualAxesModalID---" and table name "flextable"

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

  @71041    @validateDataTableQueryForSelectedDataField-gHOME-EnhancedDualAxesCharts
  Scenario Outline: Validate expected values as per query provided inside fields 'Data Table Query for selected data'
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                           | fieldOrignalValue           | filterId         |
      | Charts Config         | Data Table Query(For Selected Data) | <Data_Table_Selected_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                              | true                        | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                           | fieldNewValue               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For Selected Data) | <Data_Table_Selected_Query> | GrantorHome        | Name                      | Enhanced Dual Axes         |
      | Charts Config         | Active                              | true                        | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I pause execution for "5" seconds
    And I click on menu icon of chart "Enhanced Dual Axes" with title "Enhanced View"
    When I click on chart label at position "1" inside chart with id "---program:-:EnhancedDualAxesChartID---" on modal
    Then I see the following rows under the following columns in table with id "---program:-:EnhancedDualAxesModalID---" :
      | Account Name       |
      | UnitedHealth Group |

    Examples:
      | Data_Table_Selected_Query                                                                                                                                                          |
      | SELECT TotalGrantAwardAmount__c ,Grant__r.InternalOrganization__r.Name FROM Award__c where Grant__r.InternalOrganization__r.name='{!XAxisValue}' AND TotalGrantAwardAmount__c != 0 |

  @71127    @validateAllDataTableHeaderFieldOnEnhancedViewClick-gHOME-EnhancedDualAxesCharts
  Scenario: Validate All Data table header text on UI after making changes from config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue          | filterId         |
      | Charts Config         | All data table header | Total Grant Awarded Amount | ApiGeneratedId:0 |
      | Charts Config         | Active                | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | All data table header | Test Automation Header | GrantorHome        | Name                      | Enhanced Dual Axes         |
      | Charts Config         | Active                | true                   | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Dual Axes" with title "Enhanced View"
    When I click modal button "Show All Data"
    Then I see "Test Automation Header" displayed in modal

  @71128    @validateAllDataTableHeaderFieldFromBurgerIcon-gHOME-EnhancedDualAxesCharts
  Scenario: Validate All Data table header text on UI after making changes from config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue          | filterId         |
      | Charts Config         | All data table header | Total Grant Awarded Amount | ApiGeneratedId:0 |
      | Charts Config         | Active                | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | All data table header | Test Automation Header | GrantorHome        | Name                      | Enhanced Dual Axes         |
      | Charts Config         | Active                | true                   | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Dual Axes" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Dual Axes"
    Then I see "Test Automation Header" displayed in modal

  @71133    @validateDataTableHeaderFieldFromBurgerIcon-gHOME-EnhancedDualAxesCharts
  Scenario: Validate Data table header text on UI after making changes from config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Charts Config         | Data table header | Awarded Amount    | ApiGeneratedId:0 |
      | Charts Config         | Active            | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data table header | Test Automation Header | GrantorHome        | Name                      | Enhanced Dual Axes         |
      | Charts Config         | Active            | true                   | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Dual Axes" with title "Enhanced View"
    When I click on chart label at position "1" inside chart with id "---program:-:EnhancedDualAxesChartID---" on modal
    Then I see "Test Automation Header" displayed in modal

  @71136    @validateElementsOnModalComingOnBarChartsClick-gHOME-EnhancedDualAxesCharts
  Scenario: Validate Enhanced Dual Axes chart modal details after closing modal
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Dual Axes" with title "Enhanced View"
    When I click on chart label at position "1" inside chart with id "---program:-:EnhancedDualAxesChartID---" on modal
    When I click modal button "Close"
    Then I see chart legends are displayed for chart/enhanced Charts "EnhancedDualAxes"

  @71140    @validateAll-axisPrefix-gHOME-EnhancedDualAxesCharts
  Scenario: Change chart x-axis/Y-Axis/Z-Axis prefix from config and validate inside HOME phase for Enhanced Dual Axes Charts
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | X Axis Prefix |                   | ApiGeneratedId:0 |
      | Charts Config         | Y Axis Prefix |                   | ApiGeneratedId:1 |
      | Charts Config         | Z-Axis Prefix |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | X Axis Prefix | @              | GrantorHome        | Name                      | Enhanced Dual Axes         |
      | Charts Config         | Y Axis Prefix | TestAutomation | GrantorHome        | Name                      | Enhanced Dual Axes         |
      | Charts Config         | Z-Axis Prefix | 01             | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "(01)" at axis "highcharts-yaxis" for chart "EnhancedDualAxes"
    Then I see "(@)" at axis "highcharts-xaxis" for chart "EnhancedDualAxes"
    Then I see "(TestAutomation)" at axis "highcharts-yaxis" for chart "EnhancedDualAxes"

  @71142    @validateAll-axisSuffix-gHOME-EnhancedDualAxesCharts
  Scenario: Change chart x-axis/Y-Axis/Z-Axis suffix from config and validate inside HOME phase for Enhanced Dual Axes Charts
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | X Axis Suffix |                   | ApiGeneratedId:0 |
      | Charts Config         | Y Axis Suffix |                   | ApiGeneratedId:1 |
      | Charts Config         | Z-Axis Suffix |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | X Axis Suffix | @              | GrantorHome        | Name                      | Enhanced Dual Axes         |
      | Charts Config         | Y Axis Suffix | TestAutomation | GrantorHome        | Name                      | Enhanced Dual Axes         |
      | Charts Config         | Z-Axis Suffix | 01             | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "(01)" at axis "highcharts-yaxis" for chart "EnhancedDualAxes"
    Then I see "(@)" at axis "highcharts-xaxis" for chart "EnhancedDualAxes"
    Then I see "(TestAutomation)" at axis "highcharts-yaxis" for chart "EnhancedDualAxes"

  @71174    @validateElementsOnModalComingOnBarChartsClickOnMainPage-gHOME-EnhancedDualAxesCharts
  Scenario: Validate Enhanced Dual Axes chart on home page details while clicking on charts bars on the basis of record name
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I pause execution for "5" seconds
    When I click on chart label at position "1" inside chart with id "---program:-:EnhancedDualAxesChartID---" on page
    Then I see the following rows under the following columns in table with id "---program:-:EnhancedDualAxesModalID---" :
      | Total Awarded Amount | Account Name       |
      | $350000.00           | UnitedHealth Group |

  @71024    @validateActiveFieldAtCharts-gAnnouncement-Announcementtest-1
  Scenario: Validating Announcementtest_1 is getting displayed on UI while making changes of boolean field Active at configuration page -gAnnouncement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true          | FundingOpportunity | Name                      | Announcemnenttest_1        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see charts with id "---program:-:AnnouncemnentTestChartID---" displayed

  @71026    @validateTitleFieldAtCharts-gAnnouncement-Announcementtest-1
  Scenario: Changing chart title for 'Announcementtest-1' enhanced chart in configuration and validating inside- gAnnouncement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Title     | Test              | ApiGeneratedId:0 |
      | Charts Config         | Active    | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue      | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Title     | Announcementtest-1 | FundingOpportunity | Name                      | Announcemnenttest_1        |
      | Charts Config         | Active    | true               | FundingOpportunity | Name                      | Announcemnenttest_1        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see "Announcementtest-1" displayed as chart title

  @71028    @validateChartTypeFieldAtCharts-gAnnouncement-Announcementtest-1
  Scenario: Changing value of chart type to Bar for 'Announcementtest-1' enhanced chart in configuration and validating inside planning-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Charts Config         | Chart Type | Bar               | ApiGeneratedId:0 |
      | Charts Config         | Active     | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Chart Type | Bar           | FundingOpportunity | Name                      | Announcemnenttest_1        |
      | Charts Config         | Active     | true          | FundingOpportunity | Name                      | Announcemnenttest_1        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Test" with title "Enhanced View"
    When I click modal button "Close"
    Then I see chart legends are displayed for chart/enhanced Charts "Announcemnenttest_1"

  @71029    @validateTitleFieldAtCharts-gAnnouncement-Testing_column
  Scenario: Changing chart title for 'Testing_column' enhanced chart in configuration and validating inside- gAnnouncement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Title     | Testing column    | ApiGeneratedId:0 |
      | Charts Config         | Active    | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Title     | Testing column1 | FundingOpportunity | Name                      | Testing_Column             |
      | Charts Config         | Active    | true            | FundingOpportunity | Name                      | Testing_Column             |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see "Testing column1" displayed as chart title

  @71030    @validateActiveFieldAtCharts-gAnnouncement-Testing_column
  Scenario: Validating Testing_column is getting displayed/NotDisplayed on UI while making changes of boolean field Active at configuration page -gAnnouncement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | false         | FundingOpportunity | Name                      | Testing_Column             |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I do not see "Testing_column1" displayed as chart title

  @71031    @validateAll-axisPrefix-gHOME-Testing_columnCharts
  Scenario: Change chart x-axis/Y-Axis prefix from config and validate inside Announcements phase for Testing_Column Charts-gAnnouncement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Active        | false             | ApiGeneratedId:0 |
      | Charts Config         | X Axis Prefix |                   | ApiGeneratedId:1 |
      | Charts Config         | Y Axis Prefix |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active        | true          | FundingOpportunity | Name                      | Testing_Column             |
      | Charts Config         | X Axis Prefix | @             | FundingOpportunity | Name                      | Testing_Column             |
      | Charts Config         | Y Axis Prefix | $             | FundingOpportunity | Name                      | Testing_Column             |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see "($)" at axis "highcharts-yaxis" for chart "Testing_Column"
    Then I see "(@)" at axis "highcharts-xaxis" for chart "Testing_Column"

  @71033    @validateAll-axisSuffix-gHOME-Testing_columnCharts
  Scenario: Change chart x-axis/Y-Axis suffix from config and validate inside Announcements phase for Testing_Column Charts-gAnnouncement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Active        | false             | ApiGeneratedId:0 |
      | Charts Config         | X Axis Suffix |                   | ApiGeneratedId:1 |
      | Charts Config         | Y Axis Suffix |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active        | true          | FundingOpportunity | Name                      | Testing_Column             |
      | Charts Config         | X Axis Suffix | @             | FundingOpportunity | Name                      | Testing_Column             |
      | Charts Config         | Y Axis Suffix | $             | FundingOpportunity | Name                      | Testing_Column             |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I pause execution for "10" seconds
    Then I see "($)" at axis "highcharts-yaxis" for chart "Testing_Column"
    Then I see "(@)" at axis "highcharts-xaxis" for chart "Testing_Column"

  @71036    @validateEditDataTableQueryforAllDataFieldFromBurgerMenuIcon-gAnnouncement-Testing_columnCharts
  Scenario Outline: Validate expected column from Testing_Column chart modal(show all data from enhanced view icon) displayed/Not displayed - from burger menu icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | FundingOpportunity | Name                      | Testing_Column             |
      | Charts Config         | Active                         | true                   | FundingOpportunity | Name                      | Testing_Column             |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Testing column" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Testing column"
    Then I softly do not see "Change Request #" in flex table header "Testing_ColumnIdrecordsModal"

    Examples:
      | default_Data_Table_Query                                                                                                                          | new_Data_Table_Query                                                                                                                         |
      | SELECT Name,RecordType__c,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' | SELECT RecordType__c,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' |

  @71034    @validateEditDataTableQueryforAllDataFieldFromEnhancedViewIcon-gAnnouncement-Testing_columnCharts
  Scenario Outline: Validate expected column from Testing_Column chart modal(show all data from enhanced view icon) displayed/Not displayed - enhanced View
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | FundingOpportunity | Name                      | Testing_Column             |
      | Charts Config         | Active                         | true                   | FundingOpportunity | Name                      | Testing_Column             |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Testing column" with title "Enhanced View"
    When I click modal button "Show All Data"
    Then I softly do not see "Change Request #" in flex table header "Testing_ColumnIdrecordsModal"

    Examples:
      | default_Data_Table_Query                                                                                                                          | new_Data_Table_Query                                                                                                                         |
      | SELECT Name,RecordType__c,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' | SELECT RecordType__c,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' |

  @70859 @validateActiveFieldAtSemiCircleDonutCharts-gAnnouncement-EnhancedCharts
  Scenario: Validating enhanced charts is getting displayed on UI while making changes of boolean field Active at semi circle donut chart configuration page -gAnnouncement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | false         | FundingOpportunity | Name                      | AnnouncementStatusFunding  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I do not see charts with id "---program:-:AnnouncementStatusFundingID---" displayed

  @70860 @validateTitleFieldAtSemiCircleDonutCharts-gAnnouncement-EnhancedCharts
  Scenario: Changing chart title for 'AnnouncementStatusFundingId' enhanced chart in configuration and validating inside planning-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue           | filterId         |
      | Charts Config         | Title     | Announcement status funding | ApiGeneratedId:0 |
      | Charts Config         | Active    | true                        | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Title     | Automation Announcement status funding | FundingOpportunity | Name                      | AnnouncementStatusFunding  |
      | Charts Config         | Active    | true                                   | FundingOpportunity | Name                      | AnnouncementStatusFunding  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see "Automation Announcement status funding" displayed as chart title

  @70862    @validateChartTypeFieldAtSemiCircleDonutCharts-gAnnouncement-EnhancedCharts
  Scenario: Changing value of chart type to pie for 'AnnouncementStatusFundingId' enhanced chart in configuration and validating inside planning-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Charts Config         | Chart Type | Semi circle donut | ApiGeneratedId:0 |
      | Charts Config         | Active     | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Chart Type | Semi circle donut | FundingOpportunity | Name                      | AnnouncementStatusFunding  |
      | Charts Config         | Active     | true              | FundingOpportunity | Name                      | AnnouncementStatusFunding  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see charts "---program:-:AnnouncementStatusFundingID---" with type as "highcharts-point"

  @70863    @validateDisableLegendsFieldsWithFalseAtSemiCircleDonutChart-gAnnouncement-EnhancedCharts
  Scenario: validate disable legends fields is working or not by viewing bottom element of Semi Circle Donut charts is getting displayed on unchecking checkbox
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Charts Config         | Disable Legend | false             | ApiGeneratedId:0 |
      | Charts Config         | Active         | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Disable Legend | false         | FundingOpportunity | Name                      | AnnouncementStatusFunding  |
      | Charts Config         | Active         | true          | FundingOpportunity | Name                      | AnnouncementStatusFunding  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see chart legends are displayed for chart/enhanced Charts "AnnouncementStatusFunding"

  @70864    @validateY-axisPrefixAtSemiCircleDonutChart-gAnnouncement-EnhancedCharts
  Scenario Outline: Change chart y-axis prefix for 'AnnouncementStatusFundingId' enhanced chart from configuration and validating inside Announcement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Y Axis Prefix |                   | ApiGeneratedId:0 |
      | Charts Config         | Active        | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Y Axis Prefix | <EchartY-Axix_Text> | FundingOpportunity | Name                      | AnnouncementStatusFunding  |
      | Charts Config         | Active        | true                | FundingOpportunity | Name                      | AnnouncementStatusFunding  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I hovering mouse on enhanced charts id "---program:-:AnnouncementStatusFundingID---" and charts type "highcharts-point"
    And I pause execution for "2" seconds
    Then I see "<EchartY-Axix_Text>" shown inside enhanced charts on hover

    Examples:
      | EchartY-Axix_Text |
      | $                 |

  @70866    @validateY-axisSuffixAtSemiCircleDonutChart-gAnnouncement-EnhancedCharts
  Scenario Outline: Change chart y-axis Suffix for 'AnnouncementStatusFundingId' enhanced chart from configuration and validating inside Announcement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Y Axis Suffix |                   | ApiGeneratedId:0 |
      | Charts Config         | Active        | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Y Axis Suffix | <EchartY-Axix_Text> | FundingOpportunity | Name                      | AnnouncementStatusFunding  |
      | Charts Config         | Active        | true                | FundingOpportunity | Name                      | AnnouncementStatusFunding  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I pause execution for "10" seconds
    When I hovering mouse on enhanced charts id "---program:-:AnnouncementStatusFundingID---" and charts type "highcharts-point"
    And I pause execution for "2" seconds
    Then I see "<EchartY-Axix_Text>" shown inside enhanced charts on hover

    Examples:
      | EchartY-Axix_Text |
      | test1             |

  @70868    @validateDisableLegendsFieldsWithTrueAtSemiCircleDonutChart-gAnnouncement-EnhancedCharts
  Scenario: validate disable legends fields is working or not by checking bottom element of charts is getting displayed on checking checkbox at Semi Circle Donut chart
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Charts Config         | Disable Legend | false             | ApiGeneratedId:0 |
      | Charts Config         | Active         | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Disable Legend | true          | FundingOpportunity | Name                      | AnnouncementStatusFunding  |
      | Charts Config         | Active         | true          | FundingOpportunity | Name                      | AnnouncementStatusFunding  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I do not see chart legends are displayed for chart/enhanced Charts "AnnouncementStatusFunding"

  @71180    @validateDataTableQueryforAllDataFieldFromEnhancedView-gAnnouncement-SemiCircleDonutChart
  Scenario Outline: Validate expected result as FOA Status column is not displayed in table as per query provided inside 'Data Table Query(for all data) by click on enhanced view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | FundingOpportunity | Name                      | AnnouncementStatusFunding  |
      | Charts Config         | Active                         | true                   | FundingOpportunity | Name                      | AnnouncementStatusFunding  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Announcement status funding" with title "Enhanced View"
    When I click modal button "Show All Data"
    Then I see only the following ordered headers in table with id "---program:-:AnnouncementStatusFundingModalID---" :
      | ID | Announcement Title | Status | Action |

    Examples:
      | default_Data_Table_Query                                                                                                                     | new_Data_Table_Query                                                                                                            |
      | SELECT Name,AnnouncementName__c,FOAStatus__c,Status__c FROM Announcement__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' | SELECT Name,AnnouncementName__c,Status__c FROM Announcement__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' |

  @71181    @validateDataTableQueryforAllDataFieldFromBurgerMenu-gAnnouncement-SemiCircleDonutChart
  Scenario Outline: Validate expected result as FOA Status column is not displayed in table as per query provided inside 'Data Table Query(for all data) by click on burger menu
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | FundingOpportunity | Name                      | AnnouncementStatusFunding  |
      | Charts Config         | Active                         | true                   | FundingOpportunity | Name                      | AnnouncementStatusFunding  |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Announcement status funding" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Announcement status funding"
    Then I see only the following ordered headers in table with id "---program:-:AnnouncementStatusFundingModalID---" :
      | ID | Announcement Title | Status | Action |

    Examples:
      | default_Data_Table_Query                                                                                                                     | new_Data_Table_Query                                                                                                            |
      | SELECT Name,AnnouncementName__c,FOAStatus__c,Status__c FROM Announcement__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' | SELECT Name,AnnouncementName__c,Status__c FROM Announcement__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' |

  @71183  @validateXAndYAxisPrefixFieldAtCharts-gAnnouncement-Announcementtest-1
  Scenario Outline: Change chart X-axis and Y-axis prefix as $ and test for 'Announcementtest-1' chart in configuratin and validating inside -gAnnouncement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Active        | false             | ApiGeneratedId:0 |
      | Charts Details Config | X-Axis Prefix |                   | ApiGeneratedId:1 |
      | Charts Details Config | Y-Axis Prefix |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active        | true                | FundingOpportunity | Name                      | Announcemnenttest_1        |
      | Charts Config         | X Axis Prefix | <EchartX-Axix_Text> | FundingOpportunity | Name                      | Announcemnenttest_1        |
      | Charts Config         | Y Axis Prefix | <EchartY-Axix_Text> | FundingOpportunity | Name                      | Announcemnenttest_1        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see "($)" at axis "highcharts-xaxis" for chart "Announcemnenttest_1"
    Then I see "(test)" at axis "highcharts-yaxis" for chart "Announcemnenttest_1"

    Examples:
      | EchartX-Axix_Text | EchartY-Axix_Text |
      | $                 | test              |

  @71184  @validateXAndYAxisSuffixFieldAtCharts-gAnnouncement-Announcementtest-1
  Scenario Outline: Change chart X-axis and Y-axis suffix as $ and test for 'Announcementtest-1' chart in configuratin and validating inside -gAnnouncement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Active        | false             | ApiGeneratedId:0 |
      | Charts Details Config | X-Axis Suffix |                   | ApiGeneratedId:1 |
      | Charts Details Config | Y-Axis Suffix |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active        | true                | FundingOpportunity | Name                      | Announcemnenttest_1        |
      | Charts Config         | X Axis Suffix | <EchartX-Axix_Text> | FundingOpportunity | Name                      | Announcemnenttest_1        |
      | Charts Config         | Y Axis Suffix | <EchartY-Axix_Text> | FundingOpportunity | Name                      | Announcemnenttest_1        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see "($)" at axis "highcharts-xaxis" for chart "Announcemnenttest_1"
    Then I see "(@)" at axis "highcharts-yaxis" for chart "Announcemnenttest_1"

    Examples:
      | EchartX-Axix_Text | EchartY-Axix_Text |
      | $                 | @                 |

  @71185    @validateDataTableQueryforAllDataFieldFromBurgerMenu-gAnnouncement-BarChart
  Scenario Outline: Validate expected result as Name column is not displayed in table as per query provided inside 'Data Table Query(for all data) by click on burger menu
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | FundingOpportunity | Name                      | Announcemnenttest_1        |
      | Charts Config         | Active                         | true                   | FundingOpportunity | Name                      | Announcemnenttest_1        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Test" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Test"
    Then I see only the following ordered headers in table with id "---program:-:AnnouncemnenttestModalID---" :
      | Type | Status | Status | Action |

    Examples:
      | default_Data_Table_Query                                                                                                                          | new_Data_Table_Query                                                                                                                         |
      | SELECT Name,RecordType__c,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' | SELECT RecordType__c,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' |

  @71186    @validateDataTableQueryforAllDataFieldFromEnhancedView-gAnnouncement-BarChart
  Scenario Outline: Validate expected result as Name column is not displayed in table as per query provided inside 'Data Table Query(for all data) by click on enhanced view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | FundingOpportunity | Name                      | Announcemnenttest_1        |
      | Charts Config         | Active                         | true                   | FundingOpportunity | Name                      | Announcemnenttest_1        |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Test" with title "Enhanced View"
    When I click modal button "Show All Data"
    Then I see only the following ordered headers in table with id "---program:-:AnnouncemnenttestModalID---" :
      | Type | Status | Status | Action |

    Examples:
      | default_Data_Table_Query                                                                                                                          | new_Data_Table_Query                                                                                                                         |
      | SELECT Name,RecordType__c,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' | SELECT RecordType__c,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' |

  @71188    @validateTitleFieldAtCharts-gApplication-EnhancedFunnelCharts
  Scenario: Changing chart title for 'Enhanced_FunnelId' enhanced dual axes chart in configuration and validating inside home-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Title     | Enhanced Funnel   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Title     | Test Automation | Application        | Name                      | Enhanced_Funnel            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    Then I see "Test Automation" displayed as chart title

  @71189 @validateActiveFieldAtSemiCircleDonutCharts-gApplication-EnhancedFunnelCharts
  Scenario: Validating enhanced charts is getting displayed on UI while making changes of boolean field Active at Enhanced Funnel Charts chart configuration page -gApplication
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | false         | Application        | Name                      | Enhanced_Funnel            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    Then I do not see charts with id "---program:-:Enhanced_FunnelID---" displayed

  @71192   @validateEditDataTableQueryforAllDataFieldFromEnhancedViewIcon-gApplication-Enhanced_Funnel
  Scenario Outline: Validate expected column from Enhanced_Funnel chart modal(show all data from enhanced view icon) displayed/Not displayed - enhanced View
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | Application        | Name                      | Enhanced_Funnel            |
      | Charts Config         | Active                         | true                   | Application        | Name                      | Enhanced_Funnel            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click on menu icon of chart "Enhanced Funnel" with title "Enhanced View"
    When I click modal button "Show All Data"
    Then I do not see "Change Request #" in flex table header "---program:-:Enhanced_FunnelModalID---"

    Examples:
      | default_Data_Table_Query                                                                                                            | new_Data_Table_Query                                                                                                           |
      | SELECT Name,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' | SELECT Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' |

  @71194   @validateEditDataTableQueryforAllDataFieldFromBurgerMenuIcon-gApplication-Enhanced_Funnel
  Scenario Outline: Validate expected column from Enhanced_Funnel chart modal(show all data from enhanced view icon) displayed/Not displayed - burger menu icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | Application        | Name                      | Enhanced_Funnel            |
      | Charts Config         | Active                         | true                   | Application        | Name                      | Enhanced_Funnel            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click on menu icon of chart "Enhanced Funnel" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Funnel"
    Then I do not see "Change Request #" in flex table header "---program:-:Enhanced_FunnelModalID---"

    Examples:
      | default_Data_Table_Query                                                                                                            | new_Data_Table_Query                                                                                                           |
      | SELECT Name,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' | SELECT Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' |

  @71190    @validateY-axisPrefix-gApplication-Enhanced_FunnelCharts
  Scenario Outline: Change chart y-axis prefix for 'Enhanced_FunnelId' enhanced chart from configuration and validating inside Application
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Y Axis Prefix |                   | ApiGeneratedId:0 |
      | Charts Config         | Active        | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Y Axis Prefix | <EchartY-Axix_Text> | Application        | Name                      | Enhanced_Funnel            |
      | Charts Config         | Active        | true                | Application        | Name                      | Enhanced_Funnel            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I pause execution for "10" seconds
    When I hovering mouse on enhanced charts id "---program:-:Enhanced_FunnelID---" and charts type "highcharts-point"
    And I pause execution for "2" seconds
    Then I see "<EchartY-Axix_Text>" shown inside enhanced charts on hover

    Examples:
      | EchartY-Axix_Text |
      | $                 |

  @71191    @validateY-axisSuffix-gApplication-Enhanced_FunnelCharts
  Scenario Outline: Change chart y-axis Suffix for 'Enhanced_FunnelId' enhanced chart from configuration and validating inside Application
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Y Axis Suffix |                   | ApiGeneratedId:0 |
      | Charts Config         | Active        | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Y Axis Suffix | <EchartY-Axix_Text> | Application        | Name                      | Enhanced_Funnel            |
      | Charts Config         | Active        | true                | Application        | Name                      | Enhanced_Funnel            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I pause execution for "10" seconds
    When I hovering mouse on enhanced charts id "---program:-:Enhanced_FunnelID---" and charts type "highcharts-point"
    And I pause execution for "2" seconds
    Then I see "<EchartY-Axix_Text>" shown inside enhanced charts on hover

    Examples:
      | EchartY-Axix_Text |
      | $                 |

  @71418    @validateActiveFieldAtCharts-gHome-EnhancedLineCharts
  Scenario: Validating enhanced charts is getting displayed on UI while making changes of boolean field Active at configuration page -gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true          | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see charts with id "---program:-:EnhancedLineID---" displayed

  @71419    @validateTitleFieldAtCharts-gHome-EnhancedLineCharts
  Scenario: Changing chart title for 'EnhancedLineId' enhanced chart in configuration and validating inside home phase
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Title     | Enhanced Line     | ApiGeneratedId:0 |
      | Charts Config         | Active    | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Title     | Automation Enhanced Line | GrantorHome        | Name                      | Enhanced Line              |
      | Charts Config         | Active    | true                     | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "Automation Enhanced Line" displayed as chart title

  @71421    @validateChartTypeFieldAtCharts-gHome-EnhancedLineCharts
  Scenario: Changing value of chart type to pie for 'EnhancedLineId' enhanced chart in configuration and validating inside home
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Charts Config         | Chart Type | Line              | ApiGeneratedId:0 |
      | Charts Config         | Active     | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Chart Type | Line          | GrantorHome        | Name                      | Enhanced Line              |
      | Charts Config         | Active     | true          | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see charts "---program:-:EnhancedLineID---" with type as "highcharts-point"

  @71426    @validateDisableLegendsFieldsWithFalse-gAnnouncement-EnhancedLineCharts
  Scenario: validate disable legends fields is working or not by viewing bottom element of charts is getting displayed on unchecking checkbox at Line chart
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Charts Config         | Disable Legend |                   | ApiGeneratedId:0 |
      | Charts Config         | Active         | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Disable Legend | false         | GrantorHome        | Name                      | Enhanced Line              |
      | Charts Config         | Active         | true          | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see chart legends are displayed for chart/enhanced Charts "EnhancedLine"

  @71427    @validateDisableLegendsFieldsWithTrue-gAnnouncement-EnhancedLineCharts
  Scenario: validate disable legends fields is working or not by viewing bottom element of charts is getting displayed on checking checkbox at Line chart
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Charts Config         | Disable Legend | false             | ApiGeneratedId:0 |
      | Charts Config         | Active         | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Disable Legend | true          | GrantorHome        | Name                      | Enhanced Line              |
      | Charts Config         | Active         | true          | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I do not see chart legends are displayed for chart/enhanced Charts "EnhancedLine"

  @71442    @validateX-axisAndY-axisLabelField-gHOME-EnhancedLineCharts
  Scenario: Change chart x-axis and y-axis label for 'EnhancedLineId' chart in configuration and validating inside HOME
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Charts Config         | X-Axis Label | Announcement Name | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | X-Axis Label | AutomationAnnouncement | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "AutomationAnnouncement" at axis "highcharts-xaxis" for chart "EnhancedLine"

  @71444    @validateY-axisLabelField-gHOME-EnhancedLineCharts
  Scenario: Change chart y-axis label for 'EnhancedLineId' chart in configuration and validating inside HOME
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Charts Config         | Y-Axis Label | Award ceiling     | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Y-Axis Label | AutomationAward | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "AutomationAward" at axis "highcharts-yaxis" for chart "EnhancedLine"

  @71493    @validateAll-axisPrefix-gHOME-EnhancedLineCharts
  Scenario: Change chart x-axis/Y-Axis prefix from config and validate inside HOME phase for Enhanced Line Charts
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | X Axis Prefix |                   | ApiGeneratedId:0 |
      | Charts Config         | Y Axis Prefix |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | X Axis Prefix | #             | GrantorHome        | Name                      | Enhanced Line              |
      | Charts Config         | Y Axis Prefix | $             | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "($)" at axis "highcharts-yaxis" for chart "EnhancedLine"
    Then I see "(#)" at axis "highcharts-xaxis" for chart "EnhancedLine"

  @71494    @validateAll-axisSuffix-gHOME-EnhancedLineCharts
  Scenario: Change chart x-axis/Y-Axis suffix from config and validate inside HOME phase for Enhanced Line Charts
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | X Axis Suffix |                   | ApiGeneratedId:0 |
      | Charts Config         | Y Axis Suffix |                   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | X Axis Suffix | =             | GrantorHome        | Name                      | Enhanced Line              |
      | Charts Config         | Y Axis Suffix | Count         | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "(Count)" at axis "highcharts-yaxis" for chart "EnhancedLine"
    Then I see "(=)" at axis "highcharts-xaxis" for chart "EnhancedLine"

  @71496    @validateAllDataHeaders-gHome-EnhancedLineChart
  Scenario:  Change chart show all data table header for 'EnhancedLine' chart in config and validating inside home - enhanced view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Charts Config         | All data table header | Awarded Amount    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | All data table header | Test Automation Application | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Line" with title "Enhanced View"
    When I click modal button "Show All Data"
    Then I see "Test Automation Application" displayed in modal

  @71498    @validateAllDataHeadersFromBurgerMenu-gHome-EnhancedLineChart
  Scenario:  Change chart show all data table header for 'EnhancedLine' chart in config and validating inside home - burger menu
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Charts Config         | All data table header | Awarded Amount    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | All data table header | Test Automation Application | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Line" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Line"
    Then I see "Test Automation Application" displayed in modal

  @71505    @validateElementsOnModalComingOnEnhancedViewClick-EnhancedLineCharts
  Scenario: Validate Enhanced chart modal details after closing show all data modal - Enhanced Line chart
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true          | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Line" with title "Enhanced View"
    When I click modal button "Show All Data"
    When I click modal button "Close"
    Then I see chart legends are displayed for chart/enhanced Charts "EnhancedLine"

  @71563    @validateDataTableQueryforAllDataFieldFromBurgerIcon-gHOME-EnhancedLineCharts
  Scenario Outline: Validate no of record rendered as per query provided inside 'Data Table Query(for all data), burger icon - Enhanced Line chart
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | GrantorHome        | Name                      | Enhanced Line              |
      | Charts Config         | Active                         | true                   | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Line" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Line"
    Then I see on modal total records count is same as total row of table id "---program:-:EnhancedLineModalID---" and table name "flextable"

    Examples:
      | default_Data_Table_Query                                                                                                                                                                                            | new_Data_Table_Query                                                                                                                                                                                                        |
      | SELECT Name,Announcement__r.Name,Announcement__r.AwardCeiling__c,ProjectPeriodStartDate__c,Announcement__r.Program__r.ProgramName__c FROM Application__c where RecordType.Name='Grantor' And Status__c != 'Created' | SELECT Name,Announcement__r.Name,Announcement__r.AwardCeiling__c,ProjectPeriodStartDate__c,Announcement__r.Program__r.ProgramName__c FROM Application__c where RecordType.Name='Grantor' And Status__c != 'Created' Limit 5 |

  @71564    @validateDataTableQueryforAllDataFieldFromEnhancedView-gHOME-EnhancedLineCharts
  Scenario Outline: Validate no of record rendered as per query provided inside 'Data Table Query(for all data)- Enhanced view- Enhanced Line chart
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | GrantorHome        | Name                      | Enhanced Line              |
      | Charts Config         | Active                         | true                   | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Line" with title "Enhanced View"
    When I click modal button "Show All Data"
    Then I see on modal total records count is same as total row of table id "---program:-:EnhancedLineModalID---" and table name "flextable"

    Examples:
      | default_Data_Table_Query                                                                                                                                                                                            | new_Data_Table_Query                                                                                                                                                                                                        |
      | SELECT Name,Announcement__r.Name,Announcement__r.AwardCeiling__c,ProjectPeriodStartDate__c,Announcement__r.Program__r.ProgramName__c FROM Application__c where RecordType.Name='Grantor' And Status__c != 'Created' | SELECT Name,Announcement__r.Name,Announcement__r.AwardCeiling__c,ProjectPeriodStartDate__c,Announcement__r.Program__r.ProgramName__c FROM Application__c where RecordType.Name='Grantor' And Status__c != 'Created' Limit 5 |

  @71586    @validateActiveFieldAtCharts-gAnnouncement-EnhancedSplineCharts
  Scenario: Validating enhanced charts is getting displayed on UI while making changes of boolean field Active at configuration page -gGrants
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true          | Grants             | Name                      | Enhanced Spline            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see charts with id "---program:-:EnhancedSplineID---" displayed

  @71587    @validateTitleFieldAtCharts-gGrants-EnhancedSplineCharts
  Scenario: Validating enhanced spline charts title is getting displayed on UI while making changes at configuration page -gGrants
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
      | Charts Config         | Title     | Enhanced Spline   | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true                       | Grants             | Name                      | Enhanced Spline            |
      | Charts Config         | Title     | Enhanced Spline Automation | Grants             | Name                      | Enhanced Spline            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "Enhanced Spline Automation" displayed as chart title

  @71589  @validateChartTypeFieldAtCharts-gGrants-EnhancedSplineCharts
  Scenario: Changing value of chart type to spline for 'EnhancedSplineId' enhanced chart in configuration and validating inside planning-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Charts Config         | Chart Type | Spline            | ApiGeneratedId:0 |
      | Charts Config         | Active     | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Chart Type | Spline        | Grants             | Name                      | Enhanced Spline            |
      | Charts Config         | Active     | true          | Grants             | Name                      | Enhanced Spline            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see charts "---program:-:EnhancedSplineID---" with type as "highcharts-tracker-line"

  @71590    @validateDisableLegendsFieldsWithFalse-gGrants-EnhancedSplineCharts
  Scenario: validate disable legends fields is working or not by viewing bottom element of charts is getting displayed on unchecking checkbox
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Charts Config         | Disable Legend | false             | ApiGeneratedId:0 |
      | Charts Config         | Active         | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Disable Legend | false         | Grants             | Name                      | Enhanced Spline            |
      | Charts Config         | Active         | true          | Grants             | Name                      | Enhanced Spline            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see chart legends are displayed for chart/enhanced Charts "EnhancedSpline"

  @71725    @validateTitleFieldAtCharts-gGrants-EnhancedAreaCharts
  Scenario: Validating enhanced area charts title is getting displayed on UI while making changes at configuration page -gGrants
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
      | Charts Config         | Title     | Enhanced Area     | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue            | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true                     | Grants             | Name                      | Enhanced Area              |
      | Charts Config         | Title     | Enhanced Area Automation | Grants             | Name                      | Enhanced Area              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "Enhanced Area Automation" displayed as chart title

  @71726    @validateActiveFieldAtCharts-gGrant-EnhancedAreaCharts
  Scenario: Validating enhanced area charts is getting displayed on UI while making changes of boolean field Active at configuration page -gGrants
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | false         | Grants             | Name                      | Enhanced Area              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I do not see charts with id "---program:-:EnhancedAreaID---" displayed

  @71727    @validateAll-axisPrefix-gGrants-EnhancedAreaCharts
  Scenario: Change chart x-axis/Y-Axis prefix from config and validate inside grants phase for Enhanced Area Charts-gGrants
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Active        | true              | ApiGeneratedId:0 |
      | Charts Config         | X Axis Prefix |                   | ApiGeneratedId:1 |
      | Charts Config         | Y Axis Prefix |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active        | true          | Grants             | Name                      | Enhanced Area              |
      | Charts Config         | X Axis Prefix | @             | Grants             | Name                      | Enhanced Area              |
      | Charts Config         | Y Axis Prefix | $             | Grants             | Name                      | Enhanced Area              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "($)" at axis "highcharts-yaxis" for chart "EnhancedArea"
    Then I see "(@)" at axis "highcharts-xaxis" for chart "EnhancedArea"

  @71728    @validateAll-axisSuffix-gGrants-EnhancedAreaCharts
  Scenario: Change chart x-axis/Y-Axis Suffix from config and validate inside grants phase for Enhanced Area Charts-gGrants
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Active        | true              | ApiGeneratedId:0 |
      | Charts Config         | X Axis Suffix |                   | ApiGeneratedId:1 |
      | Charts Config         | Y Axis Suffix |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active        | true          | Grants             | Name                      | Enhanced Area              |
      | Charts Config         | X Axis Prefix | @             | Grants             | Name                      | Enhanced Area              |
      | Charts Config         | Y Axis Prefix | $             | Grants             | Name                      | Enhanced Area              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "($)" at axis "highcharts-yaxis" for chart "EnhancedArea"
    Then I see "(@)" at axis "highcharts-xaxis" for chart "EnhancedArea"

  @71730    @validateEditDataTableQueryforAllDataFieldFromEnhancedViewIcon-gGrants-EnhancedAreaCharts
  Scenario Outline: Validate expected column from Enhanced Area chart modal(show all data from enhanced view icon) displayed/Not displayed - enhanced View
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | Grants             | Name                      | Enhanced Area              |
      | Charts Config         | Active                         | true                   | Grants             | Name                      | Enhanced Area              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click on menu icon of chart "Enhanced Area" with title "Enhanced View"
    When I click modal button "Show All Data"
    Then I softly do not see "Change Request #" in flex table header "---program:-:EnhancedAreaModalID---"

    Examples:
      | default_Data_Table_Query                                                                                                            | new_Data_Table_Query                                                                                                           |
      | SELECT Name,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' | SELECT Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' |

  @71731    @validateEditDataTableQueryforAllDataFieldFromBurgerMenu-gGrants-EnhancedAreaCharts
  Scenario Outline: Validate expected column from Enhanced Area chart modal(show all data from enhanced view icon) displayed/Not displayed - Burger menu icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | Grants             | Name                      | Enhanced Area              |
      | Charts Config         | Active                         | true                   | Grants             | Name                      | Enhanced Area              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click on menu icon of chart "Enhanced Area" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Area"
    Then I softly do not see "Change Request #" in flex table header "---program:-:EnhancedAreaModalID---"

    Examples:
      | default_Data_Table_Query                                                                                                            | new_Data_Table_Query                                                                                                           |
      | SELECT Name,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' | SELECT Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' |

  @71733    @validateTitleFieldAtCharts-gAnnouncements-EnhancedAreaSplineCharts
  Scenario: Validating enhanced area spline charts title is getting displayed on UI while making changes at configuration page -gAnnouncements
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue    | filterId         |
      | Charts Config         | Active    | true                 | ApiGeneratedId:0 |
      | Charts Config         | Title     | Enhanced Area Spline | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true                            | FundingOpportunity | Name                      | Enhanced Area Spline       |
      | Charts Config         | Title     | Enhanced Area Spline Automation | FundingOpportunity | Name                      | Enhanced Area Spline       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see "Enhanced Area Spline Automation" displayed as chart title

  @71734    @validateActiveFieldAtCharts-gAnnouncements-EnhancedAreaSplineCharts
  Scenario: Validating enhanced area spline charts is getting displayed on UI while making changes of boolean field Active at configuration page -gGrants
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | false         | FundingOpportunity | Name                      | Enhanced Area Spline       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I do not see charts with id "---program:-:EnhancedAreaSplineID---" displayed

  @71511    @validateViewActionOnShowAllDataModalComingOnBurgerIconClick-EnhancedLineCharts
  Scenario: Validate Enhanced chart view record action on show all data modal - Enhanced Line chart - burger icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true          | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Line" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Line"
    When I perform quick search for "AP-755-179" inside charts modal with id "---program:-:EnhancedLineSearchTableID---"
    When I click on "View" icon for "AP-755-179" inside flex table with id "---program:-:EnhancedLineModalID---"
    When I switch to tab number "1"
    Then I see the sub-header is "APP1- FOA for DHP" in the page details
    Then I see the header is "Application" in the page details

  @71513    @validateViewActionOnShowAllDataModalComingOnEnhancedViewClick-EnhancedLineCharts
  Scenario: Validate Enhanced chart view record action on show all data modal - Enhanced Line chart - enhanced view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true          | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Line" with title "Enhanced View"
    When I click modal button "Show All Data"
    When I perform quick search for "AP-755-179" inside charts modal with id "---program:-:EnhancedLineSearchTableID---"
    When I click on "View" icon for "AP-755-179" inside flex table with id "---program:-:EnhancedLineModalID---"
    When I switch to tab number "1"
    Then I see the sub-header is "APP1- FOA for DHP" in the page details
    Then I see the header is "Application" in the page details

  @71735    @validateAll-axisPrefix-gGrants-EnhancedAreaSplineCharts
  Scenario: Change chart x-axis/Y-Axis prefix from config and validate inside grants phase for Enhanced Area splineCharts-gGrants
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Active        | true              | ApiGeneratedId:0 |
      | Charts Config         | X Axis Prefix |                   | ApiGeneratedId:1 |
      | Charts Config         | Y Axis Prefix |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active        | true          | FundingOpportunity | Name                      | Enhanced Area Spline       |
      | Charts Config         | X Axis Prefix | @             | FundingOpportunity | Name                      | Enhanced Area Spline       |
      | Charts Config         | Y Axis Prefix | $             | FundingOpportunity | Name                      | Enhanced Area Spline       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see "($)" at axis "highcharts-yaxis" for chart "EnhancedAreaSpline"
    Then I see "(@)" at axis "highcharts-xaxis" for chart "EnhancedAreaSpline"

  @71736    @validateAll-axisSuffix-gGrants-EnhancedAreaSplineCharts
  Scenario: Change chart x-axis/Y-Axis suffix from config and validate inside grants phase for Enhanced Area splineCharts-gGrants
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Active        | true              | ApiGeneratedId:0 |
      | Charts Config         | X Axis Suffix |                   | ApiGeneratedId:1 |
      | Charts Config         | Y Axis Suffix |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active        | true          | FundingOpportunity | Name                      | Enhanced Area Spline       |
      | Charts Config         | X Axis Suffix | @             | FundingOpportunity | Name                      | Enhanced Area Spline       |
      | Charts Config         | Y Axis Suffix | $             | FundingOpportunity | Name                      | Enhanced Area Spline       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see "($)" at axis "highcharts-yaxis" for chart "EnhancedAreaSpline"
    Then I see "(@)" at axis "highcharts-xaxis" for chart "EnhancedAreaSpline"

  @71737    @validateEditDataTableQueryforAllDataFieldFromEnhancedView-gAnnouncement-EnhancedAreaSplineCharts
  Scenario Outline: Validate expected column from Enhanced Area Spline chart modal(show all data from enhanced view icon) displayed/Not displayed - from enhanced view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | FundingOpportunity | Name                      | Enhanced Area Spline       |
      | Charts Config         | Active                         | true                   | FundingOpportunity | Name                      | Enhanced Area Spline       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Enhanced Area Spline" with title "Enhanced View"
    When I click modal button "Show All Data"
    Then I softly do not see "Change Request #" in flex table header "---program:-:EnhancedAreaSplineModalID---"

    Examples:
      | default_Data_Table_Query                                                                                                            | new_Data_Table_Query                                                                                                           |
      | SELECT Name,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' | SELECT Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' |

  @71738    @validateEditDataTableQueryforAllDataFieldFromBurgerMenuIcon-gAnnouncement-EnhancedAreaSplineCharts
  Scenario Outline: Validate expected column from Enhanced Area Spline chart modal(show all data from enhanced view icon) displayed/Not displayed - from burger menu icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | FundingOpportunity | Name                      | Enhanced Area Spline       |
      | Charts Config         | Active                         | true                   | FundingOpportunity | Name                      | Enhanced Area Spline       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Enhanced Area Spline" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Area Spline"
    Then I softly do not see "Change Request #" in flex table header "---program:-:EnhancedAreaSplineModalID---"

    Examples:
      | default_Data_Table_Query                                                                                                            | new_Data_Table_Query                                                                                                           |
      | SELECT Name,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' | SELECT Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' |

  @71740    @validateTitleFieldAtCharts-gAnnouncement-EnhancedScatterCharts
  Scenario: Changing chart title for 'EnhancedScatterId' enhanced chart in configuration and validating inside gannouncement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Title     | Enhanced Scatter  | ApiGeneratedId:0 |
      | Charts Config         | Active    | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Title     | Automation Enhanced Scatter | FundingOpportunity | Name                      | Enhanced Scatter           |
      | Charts Config         | Active    | true                        | FundingOpportunity | Name                      | Enhanced Scatter           |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see "Automation Enhanced Scatter" displayed as chart title

  @71741    @validateActiveFieldAtCharts-gAnnouncements-EnhancedScatterCharts
  Scenario: Validating Enhanced Scatter Charts is getting displayed on UI while making changes of boolean field Active at configuration page -gGrants
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | false         | FundingOpportunity | Name                      | Enhanced Scatter           |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I do not see charts with id "---program:-:EnhancedScatterID---" displayed

  @71744    @validateEditDataTableQueryforAllDataFieldFromEnhancedView-gAnnouncement-EnhancedScatterCharts
  Scenario Outline: Validate expected column from Enhanced Scatter chart modal(show all data from enhanced view icon) displayed/Not displayed - from enhanced view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | FundingOpportunity | Name                      | Enhanced Scatter           |
      | Charts Config         | Active                         | true                   | FundingOpportunity | Name                      | Enhanced Scatter           |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Enhanced Scatter" with title "Enhanced View"
    When I click modal button "Show All Data"
    Then I softly do not see "Announcement Title" in flex table header "---program:-:EnhancedScatterModalID---"

    Examples:
      | default_Data_Table_Query                                                                                           | new_Data_Table_Query                                                                           |
      | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c where RecordType.Name='Grantor' | SELECT Name,AnnouncementType__c,Status__c FROM Announcement__c where RecordType.Name='Grantor' |

  @71745    @validateEditDataTableQueryforAllDataFieldFromBurgerMenu-gAnnouncement-EnhancedScatterCharts
  Scenario Outline: Validate expected column from Enhanced Scatter chart modal(show all data from enhanced view icon) displayed/Not displayed - from burger menu
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | FundingOpportunity | Name                      | Enhanced Scatter           |
      | Charts Config         | Active                         | true                   | FundingOpportunity | Name                      | Enhanced Scatter           |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Enhanced Scatter" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Scatter"
    Then I softly do not see "Announcement Title" in flex table header "---program:-:EnhancedScatterModalID---"

    Examples:
      | default_Data_Table_Query                                                                                           | new_Data_Table_Query                                                                           |
      | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c where RecordType.Name='Grantor' | SELECT Name,AnnouncementType__c,Status__c FROM Announcement__c where RecordType.Name='Grantor' |

  @71917    @validateDisableLegendsFieldsWithFalse-gAnnouncement-EnhancedScatterCharts
  Scenario: validate disable legends fields is working or not by viewing bottom element of charts is getting displayed on unchecking checkbox - enhanced scatter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Charts Config         | Disable Legend | true              | ApiGeneratedId:0 |
      | Charts Config         | Active         | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Disable Legend | true          | FundingOpportunity | Name                      | Enhanced Scatter           |
      | Charts Config         | Active         | true          | FundingOpportunity | Name                      | Enhanced Scatter           |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I do not see chart legends are displayed for chart/enhanced Charts "EnhancedScatterchart"

  @71918    @validateX-axisAndY-axisLabelField-gHOME-EnhancedSplineCharts
  Scenario: Change chart x-axis and y-axis label for 'EnhancedSplineId' chart in configuration and validating inside HOME
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Charts Config         | Active       | true              | ApiGeneratedId:0 |
      | Charts Config         | X-Axis Label | Status            | ApiGeneratedId:1 |
      | Charts Config         | Y-Axis Label | Total Amendments  | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active       | true                 | Grants             | Name                      | Enhanced Spline            |
      | Charts Config         | X-Axis Label | AutomationStatus     | Grants             | Name                      | Enhanced Spline            |
      | Charts Config         | Y-Axis Label | AutomationAmendments | Grants             | Name                      | Enhanced Spline            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I Softly see "AutomationStatus" at axis "highcharts-xaxis" for chart "EnhancedSpline"
    Then I Softly see "AutomationAmendments" at axis "highcharts-yaxis" for chart "EnhancedSpline"

  @71920    @validateAll-axisPrefix-gGrants-EnhancedSplineCharts
  Scenario: Change chart x-axis/Y-Axis prefix from config and validate inside grants phase for Enhanced spline Charts-gGrants
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Active        | true              | ApiGeneratedId:0 |
      | Charts Config         | X Axis Prefix |                   | ApiGeneratedId:1 |
      | Charts Config         | Y Axis Prefix |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active        | true          | Grants             | Name                      | Enhanced Spline            |
      | Charts Config         | X Axis Prefix | @             | Grants             | Name                      | Enhanced Spline            |
      | Charts Config         | Y Axis Prefix | $             | Grants             | Name                      | Enhanced Spline            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "($)" at axis "highcharts-yaxis" for chart "EnhancedSpline"
    Then I see "(@)" at axis "highcharts-xaxis" for chart "EnhancedSpline"

  @71922    @validateAll-axisSuffix-gGrants-EnhancedSplineCharts
  Scenario: Change chart x-axis/Y-Axis suffix from config and validate inside grants phase for Enhanced spline Charts-gGrants
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Active        | true              | ApiGeneratedId:0 |
      | Charts Config         | X Axis Suffix |                   | ApiGeneratedId:1 |
      | Charts Config         | Y Axis Suffix |                   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active        | true          | Grants             | Name                      | Enhanced Spline            |
      | Charts Config         | X Axis Suffix | @             | Grants             | Name                      | Enhanced Spline            |
      | Charts Config         | Y Axis Suffix | $             | Grants             | Name                      | Enhanced Spline            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    Then I see "($)" at axis "highcharts-yaxis" for chart "EnhancedSpline"
    Then I see "(@)" at axis "highcharts-xaxis" for chart "EnhancedSpline"

  @71923    @validateAllDataTableHeaderFieldFromEnhancedView-gGrants-EnhancedSplineCharts
  Scenario: Validate All Data table header text on UI after making changes from config - EnhancedSplineCharts - enhanced view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue               | filterId         |
      | Charts Config         | All data table header | List of Announcements by Status | ApiGeneratedId:0 |
      | Charts Config         | Active                | true                            | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | All data table header | Test Automation Header | Grants             | Name                      | Enhanced Spline            |
      | Charts Config         | Active                | true                   | Grants             | Name                      | Enhanced Spline            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click on menu icon of chart "Enhanced Spline" with title "Enhanced View"
    When I click modal button "Show All Data"
    Then I see "Test Automation Header" displayed in modal

  @71924    @validateAllDataTableHeaderFieldFromBurgerIcon-gGrants-EnhancedSplineCharts
  Scenario: Validate All Data table header text on UI after making changes from config - EnhancedSplineCharts - burger icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue               | filterId         |
      | Charts Config         | All data table header | List of Announcements by Status | ApiGeneratedId:0 |
      | Charts Config         | Active                | true                            | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | All data table header | Test Automation Header | Grants             | Name                      | Enhanced Spline            |
      | Charts Config         | Active                | true                   | Grants             | Name                      | Enhanced Spline            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click on menu icon of chart "Enhanced Spline" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Spline"
    Then I see "Test Automation Header" displayed in modal

  @71927    @validateViewActionOnShowAllDataModalComingOnBurgerIconClick-EnhancedSplineCharts
  Scenario: Validate Enhanced chart view record action on show all data modal - Enhanced spline chart - burger icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true          | Grants             | Name                      | Enhanced Spline            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click on menu icon of chart "Enhanced Spline" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Spline"
    When I perform quick search for "AR-0142" inside charts modal with id "---program:-:EnhancedSplineSearchTableID---"
    When I click on "View" icon for "AR-0142" inside flex table with id "---program:-:EnhancedSplineModalID---"
    When I switch to tab number "1"
    Then I see the sub-header is "This is the test application for IE 11" in the page details
    Then I see the header is "Amendment Request" in the page details

  @71928    @validateViewActionOnShowAllDataModalComingOnEnhancedViewClick-EnhancedSplineCharts
  Scenario: Validate Enhanced chart view record action on show all data modal - Enhanced spline chart - enhanced view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true          | Grants             | Name                      | Enhanced Spline            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click on menu icon of chart "Enhanced Spline" with title "Enhanced View"
    When I click modal button "Show All Data"
    When I perform quick search for "AR-0142" inside charts modal with id "---program:-:EnhancedSplineSearchTableID---"
    When I click on "View" icon for "AR-0142" inside flex table with id "---program:-:EnhancedSplineModalID---"
    When I switch to tab number "1"
    Then I see the sub-header is "This is the test application for IE 11" in the page details
    Then I see the header is "Amendment Request" in the page details

  @71930    @validateEditDataTableQueryforAllDataFieldFromBurgerMenuIcon-gGrants-EnhancedSplineCharts
  Scenario Outline: Validate expected column from Enhanced spline chart modal(show all data from enhanced view icon) displayed/Not displayed - burger menu
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | Grants             | Name                      | Enhanced Spline            |
      | Charts Config         | Active                         | true                   | Grants             | Name                      | Enhanced Spline            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click on menu icon of chart "Enhanced Spline" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Spline"
    Then I see on modal total records count is same as total row of table id "---program:-:EnhancedSplineModalID---" and table name "flextable"

    Examples:
      | default_Data_Table_Query                                                                                                            | new_Data_Table_Query                                                                                                                        |
      | SELECT Name,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' | SELECT Name,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' limit 5 |

  @71949    @validateViewActionOnShowAllDataModalComingOnEnhancedViewClick-EnhancedSplineCharts
  Scenario: Validate Enhanced chart view record action on show all data modal - Enhanced spline chart - enhanced view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true          | Grants             | Name                      | Enhanced Spline            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click on menu icon of chart "Enhanced Spline" with title "Enhanced View"
    When I click modal button "Show All Data"
    When I perform quick search for "AR-0142" inside charts modal with id "---program:-:EnhancedSplineSearchTableID---"
    Then I see "AR-0142" value in flex table id "---program:-:EnhancedSplineModalID---"

  @74085    @validateActiveFieldAtCharts-gHome-EnhancedBubbleCharts
  Scenario: Validating enhanced bubble charts is getting displayed on UI while making changes of boolean field Active at configuration page -gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true          | GrantorHome        | Name                      | Enhanced Bubble            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see charts with id "---program:-:EnhancedBubbleID---" displayed

  @74087    @validateTitleFieldAtCharts-gHOME-EnhancedBubbleCharts
  Scenario: Changing chart title for 'EnhancedBubbleId' enhanced dual axes chart in configuration and validating inside home-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Title     | Enhanced Bubble   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Title     | Automation Enhanced Bubble Chart | GrantorHome        | Name                      | Enhanced Bubble            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "Automation Enhanced Bubble Chart" displayed as chart title

  @74088    @validateChartTypeFieldAtCharts-gHOME-EnhancedBubbleCharts
  Scenario: Changing value of chart type to bubble for 'EnhancedBubbleId' in configuration and validating inside home
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue | filterId         |
      | Charts Config         | Chart Type | Dual axes         | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Chart Type | Dual axes     | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see charts "---program:-:EnhancedBubbleID---" with type as "highcharts-grid-line"

  @74092    @validateDisableLegendsFieldsWithFalse-gHOME-EnhancedBubbleCharts
  Scenario: validate disable legends fields of 'EnhancedBubbleId' is working or not while not checking checkbox of Disable Legend Field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Charts Config         | Disable Legend | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Disable Legend | false         | GrantorHome        | Name                      | Enhanced Bubble            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see chart legends are displayed for chart/enhanced Charts "EnhancedBubble"

  @74090    @validateDisableLegendsFieldsWithTrue-gHOME-EnhancedBubbleCharts
  Scenario: validate disable legends fields of 'EnhancedBubbleId' is working or not while checking checkbox of Disable Legend Field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Charts Config         | Disable Legend | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Disable Legend | true          | GrantorHome        | Name                      | Enhanced Bubble            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I do not see chart legends are displayed for chart/enhanced Charts "EnhancedBubble"

  @74093    @validateX-axisAndY-axisLabelField-gHOME-EnhancedBubbleCharts
  Scenario: Change chart x-axis and y-axis label for 'EnhancedBubbleId' chart in configuration and validating inside HOME
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue   | filterId         |
      | Charts Config         | Active       | true                | ApiGeneratedId:0 |
      | Charts Config         | X-Axis Label | Application awarded | ApiGeneratedId:1 |
      | Charts Config         | Y-Axis Label | No of Application   | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active       | true                   | GrantorHome        | Name                      | Enhanced Bubble            |
      | Charts Config         | X-Axis Label | TestApplicationAwarded | GrantorHome        | Name                      | Enhanced Bubble            |
      | Charts Config         | Y-Axis Label | TestAutomationYAxis    | GrantorHome        | Name                      | Enhanced Bubble            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I Softly see "TestApplicationAwarded" at axis "highcharts-xaxis" for chart "EnhancedBubble"
    Then I Softly see "TestAutomationYAxis" at axis "highcharts-yaxis" for chart "EnhancedBubble"

  @74094    @validateAll-axisPrefix-gHOME-EnhancedBubbleCharts
  Scenario: Change chart x-axis/Y-Axis prefix from config and validate inside HOME phase for Enhanced Bubble Charts
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | X Axis Prefix |                   | ApiGeneratedId:0 |
      | Charts Config         | Y Axis Prefix |                   | ApiGeneratedId:1 |
      | Charts Config         | Active        | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | X Axis Prefix | @              | GrantorHome        | Name                      | Enhanced Bubble            |
      | Charts Config         | Y Axis Prefix | TestAutomation | GrantorHome        | Name                      | Enhanced Bubble            |
      | Charts Config         | Active        | true           | GrantorHome        | Name                      | Enhanced Bubble            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "(@)" at axis "highcharts-xaxis" for chart "EnhancedBubble"
    Then I see "(TestAutomation)" at axis "highcharts-yaxis" for chart "EnhancedBubble"

  @74095    @validateAll-axisSuffix-gHOME-EnhancedBubbleCharts
  Scenario: Change chart x-axis/Y-Axis Suffix from config and validate inside HOME phase for Enhanced Bubble Charts
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | X Axis Suffix |                   | ApiGeneratedId:0 |
      | Charts Config         | Y Axis Suffix |                   | ApiGeneratedId:1 |
      | Charts Config         | Active        | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | X Axis Suffix | @              | GrantorHome        | Name                      | Enhanced Bubble            |
      | Charts Config         | Y Axis Suffix | TestAutomation | GrantorHome        | Name                      | Enhanced Bubble            |
      | Charts Config         | Active        | true           | GrantorHome        | Name                      | Enhanced Bubble            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "(@)" at axis "highcharts-xaxis" for chart "EnhancedBubble"
    Then I see "(TestAutomation)" at axis "highcharts-yaxis" for chart "EnhancedBubble"

  @74099    @validateAllDataTableHeaderFieldOnEnhancedViewClick-gHOME-EnhancedBubbleCharts
  Scenario: Validate All Data table header text on UI after making changes from config - EnhancedBubbleCharts
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue          | filterId         |
      | Charts Config         | All data table header | Total Grant Awarded Amount | ApiGeneratedId:0 |
      | Charts Config         | Active                | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | All data table header | Test Automation Header | GrantorHome        | Name                      | Enhanced Bubble            |
      | Charts Config         | Active                | true                   | GrantorHome        | Name                      | Enhanced Bubble            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Bubble" with title "Enhanced View"
    When I click modal button "Show All Data"
    Then I see "Test Automation Header" displayed in modal

  @74100    @validateAllDataTableHeaderFieldOnEnhancedViewClick-gHOME-EnhancedBubbleCharts
  Scenario: Validate All Data table header text on UI after making changes from config - EnhancedBubbleCharts
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue          | filterId         |
      | Charts Config         | All data table header | Total Grant Awarded Amount | ApiGeneratedId:0 |
      | Charts Config         | Active                | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | All data table header | Test Automation Header | GrantorHome        | Name                      | Enhanced Bubble            |
      | Charts Config         | Active                | true                   | GrantorHome        | Name                      | Enhanced Bubble            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Bubble" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Bubble"
    Then I see "Test Automation Header" displayed in modal

  @74101    @validateDataTableQueryforAllDataFieldFromBurgerIcon-gHOME-EnhancedBubbleCharts
  Scenario Outline: Validate expected result as no of record rendered as per query provided inside 'Data Table Query(for all data) - EnhancedBubbleCharts
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | GrantorHome        | Name                      | Enhanced Bubble            |
      | Charts Config         | Active                         | true                   | GrantorHome        | Name                      | Enhanced Bubble            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Bubble" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Bubble"
    Then I see on modal total records count is same as total row of table id "---program:-:EnhancedBubbleModalID---" and table name "flextable"

    Examples:
      | default_Data_Table_Query                                                                                                                                                                                                          | new_Data_Table_Query                                                                                                                                                                                                                      |
      | SELECT ApplicationsAwarded__c,NumberOfApplications__c,MaxApplicationsAllowed__c,PreApplicationRequired__c FROM Announcement__c WHERE ApplicationsAwarded__c > 0 AND MaxApplicationsAllowed__c > 0 AND NumberOfApplications__c > 0 | SELECT ApplicationsAwarded__c,NumberOfApplications__c,MaxApplicationsAllowed__c,PreApplicationRequired__c FROM Announcement__c WHERE ApplicationsAwarded__c > 0 AND MaxApplicationsAllowed__c > 0 AND NumberOfApplications__c > 0 LIMIT 5 |

  @71950    @validateViewActionOnShowAllDataModalComingOnBurgerIconClick-EnhancedSplineCharts
  Scenario: Validate Enhanced chart view record action on show all data modal - Enhanced spline chart - Burger Icon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true          | Grants             | Name                      | Enhanced Spline            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Grants" tab
    And I click on menu icon of chart "Enhanced Spline" with title "Enhanced View"
    When I click modal button "Show All Data"
    When I pause execution for "2" seconds
    When I perform quick search for "AR-0142" inside charts modal with id "---program:-:EnhancedSplineSearchTableID---"
    Then I see "AR-0142" value in flex table id "---program:-:EnhancedSplineModalID---"

  @71289    @validateDualChartType1AndDualChartType2FieldAtCharts-gHOME-EnhancedDualAxes1Charts
  Scenario: Changing value of Dual Chart Type1 And Dual Chart Type2 for 'EnhancedDualAxes1Id' enhanced dual axes1 chart in configuration and validating inside planning-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName        | fieldOrignalValue | filterId         |
      | Charts Config         | Chart Type       | Dual axes         | ApiGeneratedId:0 |
      | Charts Config         | Dual Chart Type1 | Spline            | ApiGeneratedId:1 |
      | Charts Config         | Dual Chart Type2 | Area              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName        | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Chart Type       | Dual axes     | GrantorHome        | Name                      | Enhanced Dual Axes 1       |
      | Charts Config         | Dual Chart Type1 | Spline        | GrantorHome        | Name                      | Enhanced Dual Axes 1       |
      | Charts Config         | Dual Chart Type2 | Area          | GrantorHome        | Name                      | Enhanced Dual Axes 1       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see charts "EnhancedDualAxes1Id" with type as "highcharts-tracker-line"
    Then I see charts "EnhancedDualAxes1Id" with type as "highcharts-area"

  @71171    @validateEnhancedChartIsDisplayedOnlyToAutomationUser-gHOME-EnhancedDualAxesCharts @wip
  Scenario: Validating dual axes chart is displayed to Automation user only if the chart unique id is given under custom settings config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true          | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see charts with id "---program:-:EnhancedDualAxesID---" displayed
    When I re-login as "AUTOMATION-REVIEWER" user on "default" portal
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I do not see charts with id "---program:-:EnhancedDualAxesID---" displayed

  @71172    @validateEnhancedChartIsDisplayedOnlyToAdminrUser-gHOME-EnhancedDualAxesCharts @wip
  Scenario: Validating dual axes chart is displayed to Admin user only if the chart unique id is given under custom settings config
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true          | GrantorHome        | Name                      | Enhanced Dual Axes         |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see charts with id "---program:-:EnhancedDualAxesID---" displayed
    When I re-login as "Automation-PM" user on "default" portal
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I do not see charts with id "---program:-:EnhancedDualAxesID---" displayed

  @75225    @validateActiveFieldAtCharts-gHome-EnhancedClassBasedConfigCharts
  Scenario: Validating enhanced class based config charts is getting displayed on UI while making changes of boolean field Active at configuration page -gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue      |
      | Charts Config         | Active    | true          | GrantorHome        | Name                      | GrantPerformanceScatterClsBased |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see charts with id "---program:-:GrantPerformanceScatterClsBasedID---" displayed

  @75226    @validateApexClassNameFieldAtCharts-gHome-EnhancedClassBasedConfigCharts
  Scenario: Validating enhanced class based config charts is not displayed on UI if Apex class Name is not given at configuration page -gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue               | filterId         |
      | Charts Config         | Active          | true                            | ApiGeneratedId:0 |
      | Charts Config         | Apex Class Name | GrantPerformanceScatterClsBased | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue      |
      | Charts Config         | Active          | true          | GrantorHome        | Name                      | GrantPerformanceScatterClsBased |
      | Charts Config         | Apex Class Name |               | GrantorHome        | Name                      | GrantPerformanceScatterClsBased |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I do not see "Performance Tracking" displayed as chart title

  @75440    @validateDataTableQueryforAllDataFieldFromBurgerIcon-gHOME-EnhancedClassBasedConfigCharts
  Scenario Outline: Validate expected result as no of record rendered as per query provided inside 'Data Table Query(for all data) -EnhancedClassBasedConfigCharts
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue      |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | GrantorHome        | Name                      | GrantPerformanceScatterClsBased |
      | Charts Config         | Active                         | true                   | GrantorHome        | Name                      | GrantPerformanceScatterClsBased |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Performance Tracking" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Performance Tracking"
    Then I see on modal total records count is same as total row of table id "---program:-:GrantPerformanceScatterClsBasedModalID---" and table name "flextable"

    Examples:
      | default_Data_Table_Query                                                                                                            | new_Data_Table_Query                                                                                                                        |
      | SELECT Name,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' | SELECT Name,Award__r.Status__c ,Status__c FROM AmendmentRequest__c Where Award__r.Status__c = 'Activated' AND Status__c!='Approved' limit 5 |

  @75536    @validateActiveField-gHOME-EnhancedScatterwithmultiplepointsChart
  Scenario: Validating scatter chart is getting displayed on UI while making changes of boolean field Active for dual axes chart at configuration page -gHOME
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Charts Config         | Active    | true          | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see charts with id "---program:-:EnhancedScatterwithmultiplepointsID---" displayed

  @75537    @validateTitleFieldAtCharts-gHOME-EnhancedScatterwithmultiplepointsChart
  Scenario: Changing chart title for 'EnhancedScatterwithmultiplepointsChartId' enhanced dual axes chart in configuration and validating inside home-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue                     | filterId         |
      | Charts Config         | Active    | true                                  | ApiGeneratedId:0 |
      | Charts Config         | Title     | Enhanced Scatter with multiple points | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                                    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Charts Config         | Active    | true                                             | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
      | Charts Config         | Title     | Automation Enhanced Scatter with multiple points | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "Automation Enhanced Scatter with multiple points" displayed as chart title

  @75538    @validateChartTypeFieldAtCharts-gHOME-EnhancedScatterwithmultiplepointsChart
  Scenario: Changing value of chart type for 'EnhancedScatterwithmultiplepointsChartId' chart in configuration and validating inside planning-programs
    Given I have "default" configuration as below:
      | configurationCategory | fieldName  | fieldOrignalValue            | filterId         |
      | Charts Config         | Chart Type | Scatter with multiple points | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName  | fieldNewValue                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Charts Config         | Chart Type | Scatter with multiple points | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see charts "---program:-:EnhancedScatterwithmultiplepointsID---" with type as "highcharts-grid-line"

  @75539    @validateDisableLegendsFieldsWithFalse-gHOME-EnhancedScatterwithmultiplepointsChart
  Scenario: validate disable legends fields of 'EnhancedScatterwithmultiplepointsChartId' is working or not while unchecking checkbox of Disable Legend Field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Charts Config         | Disable Legend | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Charts Config         | Disable Legend | false         | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see chart legends are displayed for chart/enhanced Charts "EnhancedScatterwithmultiplepoints"

  @75540    @validateDisableLegendsFieldsWithFalse-gHOME-EnhancedScatterwithmultiplepointsChart
  Scenario: validate disable legends fields of 'EnhancedScatterwithmultiplepointsChartId' is working or not while unchecking checkbox of Disable Legend Field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Charts Config         | Disable Legend | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Charts Config         | Disable Legend | true          | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I do not see chart legends are displayed for chart/enhanced Charts "EnhancedScatterwithmultiplepoints"

  @75548    @validateX-axisLabelField-gHOME-EnhancedScatterwithmultiplepointsChart
  Scenario: Change chart x-axis label for 'EnhancedScatterwithmultiplepointsChartId' chart in configuration and validating inside HOME
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue            | filterId         |
      | Charts Config         | X-Axis Label | Award Ceiling                | ApiGeneratedId:0 |
      | Charts Config         | Chart Type   | Scatter with multiple points | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Charts Config         | X-Axis Label | AutomationAwardCeiling       | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
      | Charts Config         | Chart Type   | Scatter with multiple points | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "AutomationAwardCeiling" at axis "highcharts-xaxis" for chart "EnhancedScatterwithmultiplepoints"

  @75549    @validateY-axisLabelField-gHOME-EnhancedScatterwithmultiplepointsChart
  Scenario: Change chart y-axis label for 'EnhancedScatterwithmultiplepointsChartId' chart in configuration and validating inside HOME
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue            | filterId         |
      | Charts Config         | Y-Axis Label | Award Floor                  | ApiGeneratedId:0 |
      | Charts Config         | Chart Type   | Scatter with multiple points | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue                | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Charts Config         | Y-Axis Label | AutomationAwardFloor         | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
      | Charts Config         | Chart Type   | Scatter with multiple points | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "AutomationAwardFloor" at axis "highcharts-yaxis" for chart "EnhancedScatterwithmultiplepoints"

  @75555    @validateDataTableQueryforAllDataFieldFromBurgerIcon-gHOME-EnhancedScatterwithmultiplepointsChart
  Scenario Outline: Validate expected result as no of record rendered as per query provided inside 'Data Table Query(for all data) -EnhancedScatterwithmultiplepointsChart
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
      | Charts Config         | Active                         | true                   | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Scatter with multiple points" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Scatter with multiple points"
    Then I see on modal total records count is same as total row of table id "---program:-:EnhancedScatterwithmultiplepointsModalID---" and table name "flextable"

    Examples:
      | default_Data_Table_Query                                                                                                  | new_Data_Table_Query                                                                                                              |
      | SELECT Name,LevelofEffort__c,AwardCeiling__c,AwardFloor__c,Status__c FROM Announcement__c WHERE RecordType.Name='Grantor' | SELECT Name,LevelofEffort__c,AwardCeiling__c,AwardFloor__c,Status__c FROM Announcement__c WHERE RecordType.Name='Grantor' limit 5 |

  @75556    @validateDataTableQueryforAllDataFieldFromEnhancedViewIcon-gHOME-EnhancedScatterwithmultiplepointsChart
  Scenario Outline: Validate expected result as no of record rendered as per query provided inside 'Data Table Query(for all data) -EnhancedScatterwithmultiplepointsChart - enhanced view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                      | fieldOrignalValue          | filterId         |
      | Charts Config         | Data Table Query(For All Data) | <default_Data_Table_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                         | true                       | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                      | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Charts Config         | Data Table Query(For All Data) | <new_Data_Table_Query> | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
      | Charts Config         | Active                         | true                   | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Scatter with multiple points" with title "Enhanced View"
    When I click modal button "Show All Data"
    Then I see on modal total records count is same as total row of table id "---program:-:EnhancedScatterwithmultiplepointsModalID---" and table name "flextable"

    Examples:
      | default_Data_Table_Query                                                                                                  | new_Data_Table_Query                                                                                                              |
      | SELECT Name,LevelofEffort__c,AwardCeiling__c,AwardFloor__c,Status__c FROM Announcement__c WHERE RecordType.Name='Grantor' | SELECT Name,LevelofEffort__c,AwardCeiling__c,AwardFloor__c,Status__c FROM Announcement__c WHERE RecordType.Name='Grantor' limit 5 |

  @75557    @validateAllDataHeadersFromBurgerMenu-gHome-EnhancedScatterwithmultiplepointsChart
  Scenario:  Change chart show all data table header for 'EnhancedScatterwithmultiplepointsChartId' chart in config and validating inside home - burger menu
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue | filterId         |
      | Charts Config         | All data table header | Awarded Amount    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Charts Config         | All data table header | Test Automation Application | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Scatter with multiple points" with title "Menu"
    When I select "Show All Data" from chart menu of chart "Enhanced Scatter with multiple points"
    Then I see "Test Automation Application" displayed in modal

  @75558    @validateAll-axisPrefix-gHOME-EnhancedScatterwithmultiplepointsChart
  Scenario: Change chart x-axis/Y-Axis prefix from config and validate inside HOME phase for Enhanced Scatter with multiple points Charts
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | X Axis Prefix |                   | ApiGeneratedId:0 |
      | Charts Config         | Y Axis Prefix |                   | ApiGeneratedId:1 |
      | Charts Config         | Active        | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Charts Config         | X Axis Prefix | @              | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
      | Charts Config         | Y Axis Prefix | TestAutomation | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
      | Charts Config         | Active        | true           | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "(@)" at axis "highcharts-xaxis" for chart "EnhancedScatterwithmultiplepoints"
    Then I see "TestAutomation" at axis "highcharts-yaxis" for chart "EnhancedScatterwithmultiplepoints"

  @75559    @validateAll-axisSuffix-gHOME-EnhancedScatterwithmultiplepointsChart
  Scenario: Change chart x-axis/Y-Axis suffix from config and validate inside HOME phase for Enhanced Scatter with multiple points Charts
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | X Axis Suffix |                   | ApiGeneratedId:0 |
      | Charts Config         | Y Axis Suffix |                   | ApiGeneratedId:1 |
      | Charts Config         | Active        | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue            |
      | Charts Config         | X Axis Suffix | @              | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
      | Charts Config         | Y Axis Suffix | TestAutomation | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
      | Charts Config         | Active        | true           | GrantorHome        | Name                      | Enhanced Scatter with multiple points |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "(@)" at axis "highcharts-xaxis" for chart "EnhancedScatterwithmultiplepoints"
    Then I see "TestAutomation" at axis "highcharts-yaxis" for chart "EnhancedScatterwithmultiplepoints"

  @71566    @validateYFormattedNumbers-ghOME-EnhancedLineCharts
  Scenario: Enable y-formatted numbers for 'Enhanced Line' chart in configuratin and validating inside home
    Given I have "default" configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Charts Config         | Y Formatted Number | true              | ApiGeneratedId:0 |
      | Charts Config         | Active             | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Y Formatted Number | true          | GrantorHome        | Name                      | Enhanced Line              |
      | Charts Config         | Active             | true          | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I pause execution for "10" seconds
    When I hovering mouse on specific enhanced charts id "---program:-:EnhancedLineID---" and charts type "highcharts-point"
    And I pause execution for "2" seconds
    Then I see ",000" shown inside enhanced charts on hover

  @71446    @validateY-AxisLabel-ghOME-EnhancedLineCharts
  Scenario: Enable y-formatted numbers for 'Enhanced Line' chart in configuratin and validating inside home
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Charts Config         | Y-Axis Label | Award ceiling     | ApiGeneratedId:0 |
      | Charts Config         | Active       | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue          | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Y-Axis Label | AutomationAwardCeiling | GrantorHome        | Name                      | Enhanced Line              |
      | Charts Config         | Active       | true                   | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I hovering mouse on specific enhanced charts id "---program:-:EnhancedLineID---" and charts type "highcharts-point"
    And I pause execution for "2" seconds
    Then I see "AutomationAwardCeiling" shown inside enhanced charts on hover

  @71567    @validateDecimalNumberFormatting-ghOME-EnhancedLineCharts
  Scenario: Enable 'Allow Decimal Number Y axis' field for 'Enhanced Line' chart in configuration and validating inside home
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                   | fieldOrignalValue | filterId         |
      | Charts Config         | Allow Decimal Number Y axis | false             | ApiGeneratedId:0 |
      | Charts Config         | Active                      | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                   | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Allow Decimal Number Y axis | true          | GrantorHome        | Name                      | Enhanced Line              |
      | Charts Config         | Active                      | true          | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I hovering mouse on specific enhanced charts id "---program:-:EnhancedLineID---" and charts type "highcharts-point"
    And I pause execution for "2" seconds
    Then I see ".00" shown inside enhanced charts on hover

  @71568    @validateDecimalNumberFormatting-ghOME-EnhancedLineCharts
  Scenario: Enable 'Allow Decimal Number Y axis' field for 'Enhanced Line' chart in configuration and validating inside home
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                   | fieldOrignalValue | filterId         |
      | Charts Config         | Allow Decimal Number Y axis | false             | ApiGeneratedId:0 |
      | Charts Config         | Y Formatted Number          | false             | ApiGeneratedId:1 |
      | Charts Config         | Active                      | true              | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                   | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Allow Decimal Number Y axis | true          | GrantorHome        | Name                      | Enhanced Line              |
      | Charts Config         | Y Formatted Number          | true          | GrantorHome        | Name                      | Enhanced Line              |
      | Charts Config         | Active                      | true          | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I hovering mouse on specific enhanced charts id "---program:-:EnhancedLineID---" and charts type "highcharts-point"
    And I pause execution for "2" seconds
    Then I see ",000.00" shown inside enhanced charts on hover

  @71742    @validateY-AxisPrefixFieldAtCharts-gAnnouncement-EnhancedScatterCharts
  Scenario: Changing Y-Axis Prefix for 'EnhancedScatterId' enhanced chart in configuration and validating inside gannouncement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Y Axis Prefix |                   | ApiGeneratedId:0 |
      | Charts Config         | Active        | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Y Axis Prefix | $             | FundingOpportunity | Name                      | Enhanced Scatter           |
      | Charts Config         | Active        | true          | FundingOpportunity | Name                      | Enhanced Scatter           |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I hovering mouse on specific enhanced charts id "---program:-:EnhancedScatterID---" and charts type "highcharts-point"
    And I pause execution for "2" seconds
    Then I see "$" shown inside enhanced charts on hover

  @71743    @validateY-AxisSuffixFieldAtCharts-gAnnouncement-EnhancedScatterCharts
  Scenario: Changing Y-Axis suffix for 'EnhancedScatterId' enhanced chart in configuration and validating inside gannouncement
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Config         | Y Axis Suffix |                   | ApiGeneratedId:0 |
      | Charts Config         | Active        | true              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Y Axis Suffix | $             | FundingOpportunity | Name                      | Enhanced Scatter           |
      | Charts Config         | Active        | true          | FundingOpportunity | Name                      | Enhanced Scatter           |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    When I hovering mouse on specific enhanced charts id "---program:-:EnhancedScatterID---" and charts type "highcharts-point"
    And I pause execution for "2" seconds
    Then I see "$" shown inside enhanced charts on hover

  @74098    @validateX-AxisY-AxisZ-AxisLabel-ghOME-EnhancedBubbleCharts @wip
  Scenario: Enable X-Axis Y-Axis Z-Axis Label for 'EnhancedBubbleId' chart in configuratin and validating inside planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue        | filterId         |
      | Charts Config         | X-Axis Label | Application awarded      | ApiGeneratedId:0 |
      | Charts Config         | Y-Axis Label | No of Application        | ApiGeneratedId:1 |
      | Charts Config         | Z-Axis Label | Total grant Award Amount | ApiGeneratedId:2 |
      | Charts Config         | Active       | true                     | ApiGeneratedId:3 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue       | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | X-Axis Label | TestAutomationXAxis | GrantorHome        | Name                      | Enhanced Bubble            |
      | Charts Config         | Y-Axis Label | TestAutomationYAxis | GrantorHome        | Name                      | Enhanced Bubble            |
      | Charts Config         | Z-Axis Label | TestAutomationZAxis | GrantorHome        | Name                      | Enhanced Bubble            |
      | Charts Config         | Active       | true                | GrantorHome        | Name                      | Enhanced Bubble            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I hovering mouse on specific enhanced charts id "---program:-:EnhancedBubbleID---" and charts type "highcharts-grid-line"
    And I pause execution for "2" seconds
    Then I see "TestAutomationXAxis" shown inside enhanced charts on hover
    Then I see "TestAutomationYAxis" shown inside enhanced charts on hover
    Then I see "TestAutomationZAxis" shown inside enhanced charts on hover

  @74802    @validateNameFieldAPIName-ghOME-EnhancedBubbleCharts
  Scenario: validate Name Field API Name for 'EnhancedBubbleId' chart in configuratin and validating inside planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName           | fieldOrignalValue         | filterId         |
      | Charts Config         | Name Field API Name | PreApplicationRequired__c | ApiGeneratedId:0 |
      | Charts Config         | Active              | true                      | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName           | fieldNewValue             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Name Field API Name | PreApplicationRequired__c | GrantorHome        | Name                      | Enhanced Bubble            |
      | Charts Config         | Active              | true                      | GrantorHome        | Name                      | Enhanced Bubble            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see "false" at axis "highcharts-bubble-series" for chart "EnhancedBubble"

  @75016    @validateHeaderFieldAPIName-ghOME-EnhancedBubbleCharts @wip
  Scenario: validate Header Field API Name for 'EnhancedBubbleId' chart in configuratin and validating inside planning
    Given I have "default" configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue         | filterId         |
      | Charts Config         | Header Field API Name | PreApplicationRequired__c | ApiGeneratedId:0 |
      | Charts Config         | Active                | true                      | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue             | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Header Field API Name | PreApplicationRequired__c | GrantorHome        | Name                      | Enhanced Bubble            |
      | Charts Config         | Active                | true                      | GrantorHome        | Name                      | Enhanced Bubble            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I hovering mouse on specific enhanced charts id "---program:-:EnhancedBubbleID---" and charts type "highcharts-grid-line"
    And I pause execution for "2" seconds
    Then I see "false" shown inside enhanced charts on hover

  @71195    @validateDataTableQueryForSelectedDataField-gAnnouncement-EnhancedFunnelCharts
  Scenario Outline: Validate expected values as per query provided inside fields 'Data Table Query for selected data' at enhanced funnel chart
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                           | fieldOrignalValue                   | filterId         |
      | Charts Config         | Data Table Query(For Selected Data) | <default_Data_Table_Selected_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                              | true                                | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                           | fieldNewValue                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data Table Query(For Selected Data) | <new_Data_Table_Selected_Query> | Application        | Name                      | Enhanced_Funnel            |
      | Charts Config         | Active                              | true                            | Application        | Name                      | Enhanced_Funnel            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I pause execution for "5" seconds
    And I click on enhanced charts id "---program:-:Enhanced_FunnelID---"
    Then I see the following rows under the following columns in table with id "---program:-:Enhanced_FunnelModalID---" :
      | Announcement Title | Status  |
      | Testing            | Created |

    Examples:
      | default_Data_Table_Selected_Query                                                                                                                            | new_Data_Table_Selected_Query                                                                                                  |
      | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c Where AnnouncementType__c = '{!XAxisValue}' And RecordType.Name='Grantor' | SELECT Name,AnnouncementName__c,Status__c FROM Announcement__c Where Status__c = '{!XAxisValue}' And RecordType.Name='Grantor' |

  @71178    @validateDataTableQueryForSelectedDataField-gAnnouncement-EnhancedSemiCircleDonutCharts
  Scenario Outline: Validate expected values as per query provided inside fields 'Data Table Query for selected data' at semi circle donut chart
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                           | fieldOrignalValue                   | filterId         |
      | Charts Config         | Data Table Query(For Selected Data) | <default_Data_Table_Selected_Query> | ApiGeneratedId:0 |
      | Charts Config         | Active                              | true                                | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                           | fieldNewValue                   | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue  |
      | Charts Config         | Data Table Query(For Selected Data) | <new_Data_Table_Selected_Query> | FundingOpportunity | Name                      | Announcement status funding |
      | Charts Config         | Active                              | true                            | FundingOpportunity | Name                      | Announcement status funding |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I pause execution for "5" seconds
    And I click on enhanced charts id "---program:-:AnnouncementStatusFundingID---"
    Then I do not see "Announcement Type" in flex table header "---program:-:AnnouncementStatusFundingModalID---"

    Examples:
      | default_Data_Table_Selected_Query                                                                                                                            | new_Data_Table_Selected_Query                                                                                                  |
      | SELECT Name,AnnouncementName__c,AnnouncementType__c,Status__c FROM Announcement__c Where AnnouncementType__c = '{!XAxisValue}' And RecordType.Name='Grantor' | SELECT Name,AnnouncementName__c,Status__c FROM Announcement__c Where Status__c = '{!XAxisValue}' And RecordType.Name='Grantor' |

  @71926    @validateDataTableHeaderField-gHome-EnhancedColumnChart
  Scenario:  Change chart data table header for 'EnhancedColumn' chart in config and validating inside selected data modal - enhanced view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Charts Config         | Data table header | All Amendment     | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue              | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data table header | Test Automation Amendments | FundingOpportunity | Name                      | Testing_Column             |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Testing column" with title "Enhanced View"
    When I click on chart label at position "1" inside chart with id "---program:-:Testing_ColumnChartId---" on modal
    Then I see "Test Automation Amendments" displayed in modal

  @71187    @validateDataTableQueryForSelectedDataField-gAnnouncement-EnhancedBarCharts
  Scenario: Validate expected values as per query provided inside fields 'Data Table Query for selected data' at enhanced bar chart
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Charts Config         | Active    | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Active    | true          | GrantorHome        | Name                      | Enhanced Bar               |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I pause execution for "5" seconds
    And I click on menu icon of chart "Enhanced Bar" with title "Enhanced View"
    When I click on chart label at position "1" inside chart with id "---program:-:EnhancedBarChartId---" on modal
    Then I see the following rows under the following columns in table with id "---program:-:EnhancedBarModalID---" :
      | AwardCeiling |
      | $300000      |

  @71501    @validateDataTableHeaders-gHome-EnhancedLineChart
  Scenario:  Change chart data table header for 'EnhancedLine' chart in config and validating inside home - enhanced view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Charts Config         | Data table header | All Application   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue               | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Data table header | Test Automation Application | GrantorHome        | Name                      | Enhanced Line              |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Line" with title "Enhanced View"
    And I pause execution for "10" seconds
    When I click on chart label at position "1" inside chart with id "---program:-:EnhancedLineChartId---" on modal
    Then I see "Test Automation Application" displayed in modal

  @103509    @validateDisplayAreaFieldAtChartsOnDashboardLevelWhenValueIsBoth-gHome-EnhancedClassBasedConfigCharts
  Scenario: Validating charts is getting displayed at dashboard if display area is set to Both -gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Charts Config         | Display Area | Both              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue      |
      | Charts Config         | Display Area | Both          | GrantorHome        | Name                      | GrantPerformanceScatterClsBased |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    Then I see charts with id "---program:-:GrantPerformanceScatterClsBasedID---" displayed

  @103416    @validateDisplayAreaFieldAtChartsOnPhaseLevelWhenValueIsSetAsBoth-gHome-EnhancedClassBasedConfigCharts
  Scenario: Validating charts is getting displayed at phase if display area is set to Both -gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Charts Config         | Display Area | Both              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue      |
      | Charts Config         | Display Area | Both          | GrantorHome        | Name                      | GrantPerformanceScatterClsBased |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see charts with id "---program:-:GrantPerformanceScatterClsBasedID---" displayed

  @103367    @validateChartsNotDisplayedOnPhaseLevelWhenDisplayAreaFieldIsSetAsDashboard-gHome-EnhancedClassBasedConfigCharts
  Scenario: Validating charts is not displayed at home phase if display area is set to dashboard -gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Charts Config         | Display Area | Both              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue      |
      | Charts Config         | Display Area | Dashboard     | GrantorHome        | Name                      | GrantPerformanceScatterClsBased |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I do not see charts with id "---program:-:GrantPerformanceScatterClsBasedID---" displayed

  @103417     @validateChartsDisplayedOnPhaseLevelWhenDisplayAreaFieldIsSetAsPhase-gHome-EnhancedClassBasedConfigCharts
  Scenario: Validating charts is displayed at home phase if display area is set to phase -gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Charts Config         | Display Area | Both              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue      |
      | Charts Config         | Display Area | Phase         | GrantorHome        | Name                      | GrantPerformanceScatterClsBased |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see charts with id "---program:-:GrantPerformanceScatterClsBasedID---" displayed

  @103568    @validateChartsnOTDisplayedOnDashboardLevelWhenDisplayAreaFieldIsSetAsPhase-gHome-EnhancedClassBasedConfigCharts
  Scenario: Validating charts is not displayed at dashboard phase if display area is set to phase -gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Charts Config         | Display Area | Both              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue      |
      | Charts Config         | Display Area | Phase         | GrantorHome        | Name                      | GrantPerformanceScatterClsBased |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    Then I do not see charts with id "---program:-:GrantPerformanceScatterClsBasedID---" displayed

  @103767    @validateChartsDisplayedToSystemAdminUserWhenAvailableForProfileIsSetForSysAdminOnly-gHome-EnhancedClassBasedConfigCharts
  Scenario: Validating charts is displayed at home phase if display area is set to phase -gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue                 | filterId         |
      | Charts Config         | Available for Profiles | PM; PO; SPI; System Administrator | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue      |
      | Charts Config         | Available for Profiles | System Administrator | GrantorHome        | Name                      | GrantPerformanceScatterClsBased |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see charts with id "---program:-:GrantPerformanceScatterClsBasedID---" displayed

  @103774    @validateChartsDisplayedToSystemAdminUserWhenAvailableForProfileIsSetForSysAdminOnly-gHome-EnhancedClassBasedConfigCharts
  Scenario: Validating charts is displayed at home phase if display area is set to phase -gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue                 | filterId         |
      | Charts Config         | Available for Profiles | PM; PO; SPI; System Administrator | ApiGeneratedId:0 |
      | Charts Config         | Display Area           | Both                              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue      |
      | Charts Config         | Available for Profiles | System Administrator | GrantorHome        | Name                      | GrantPerformanceScatterClsBased |
      | Charts Config         | Display Area           | Dashboard            | GrantorHome        | Name                      | GrantPerformanceScatterClsBased |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    Then I see charts with id "---program:-:GrantPerformanceScatterClsBasedID---" displayed

  @103964    @validateChartsDisplayedToPMUserAtPhaseWhenAvailableForProfileIsSetForPMOnly-gHome
  Scenario: Validating charts is displayed at home phase if display area is set to phase for PM/PO user -gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue                 | filterId         |
      | Charts Config         | Available for Profiles | PM; PO; SPI; System Administrator | ApiGeneratedId:0 |
      | Charts Config         | Display Area           | Both                              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue      |
      | Charts Config         | Available for Profiles | PM; PO        | GrantorHome        | Name                      | GrantPerformanceScatterClsBased |
      | Charts Config         | Display Area           | Phase         | GrantorHome        | Name                      | GrantPerformanceScatterClsBased |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    Then I see charts with id "---program:-:GrantPerformanceScatterClsBasedID---" displayed

  @103971    @validateChartsDisplayedToPM/POUserAtDashboardWhenAvailableForProfileIsSetForPMOnly-gHome
  Scenario: Validating charts is displayed at dashboard if display area is set to dashboard for PM/PO user -gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue                 | filterId         |
      | Charts Config         | Available for Profiles | PM; PO; SPI; System Administrator | ApiGeneratedId:0 |
      | Charts Config         | Display Area           | Both                              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue      |
      | Charts Config         | Available for Profiles | PM; PO        | GrantorHome        | Name                      | GrantPerformanceScatterClsBased |
      | Charts Config         | Display Area           | Dashboard     | GrantorHome        | Name                      | GrantPerformanceScatterClsBased |
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Analytics" tab
    Then I see charts with id "---program:-:GrantPerformanceScatterClsBasedID---" displayed

  @104117    @validateChartsDisplayedToSPIUserAtPhaseWhenAvailableForProfileIsSetForSPIOnly-gHome
  Scenario: Validating charts is displayed at phase if display area is set to phase for SPI user -gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Charts Config         | Available for Profiles | SPI               | ApiGeneratedId:0 |
      | Charts Config         | Display Area           | Both              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Available for Profiles | SPI           | RecipientAwards    | Name                      | Grants Awarded             |
      | Charts Config         | Display Area           | Phase         | RecipientAwards    | Name                      | Grants Awarded             |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Grants" tab
    Then I see charts with id "chartGrantsAwardedId" displayed

  @104123    @validateChartsDisplayedToSPIUserAtDashboardWhenAvailableForProfileIsSetForSPIOnly-gHome
  Scenario: Validating charts is displayed at dashboard if display area is set to dashboard for SPI user -gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Charts Config         | Available for Profiles | SPI               | ApiGeneratedId:0 |
      | Charts Config         | Display Area           | Both              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Available for Profiles | SPI           | RecipientAwards    | Name                      | Grants Awarded             |
      | Charts Config         | Display Area           | Dashboard     | RecipientAwards    | Name                      | Grants Awarded             |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Analytics" tab
    Then I see charts with id "chartGrantsAwardedId" displayed

  @104333    @validateChartsNotDisplayedToSPIUserAtDashboardWhenAvailableForProfileIsSetForAdminOnly-gHome
  Scenario: Validating chart is not displayed at dashboard to spi user if available for profile is set to admin only -gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue | filterId         |
      | Charts Config         | Available for Profiles | SPI               | ApiGeneratedId:0 |
      | Charts Config         | Display Area           | Both              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Available for Profiles | System Administrator | RecipientAwards    | Name                      | Grants Awarded             |
      | Charts Config         | Display Area           | Dashboard            | RecipientAwards    | Name                      | Grants Awarded             |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Analytics" tab
    Then I do not see charts with id "chartGrantsAwardedId" displayed

  @104334    @validateChartsNotDisplayedToSPIUserAtPhaseWhenAvailableForProfileIsSetForAdminOnly-gHome
  Scenario: Validating chart is not displayed at dashboard to spi user if available for profile is set to admin only -gHome
    Given I have "default" configuration as below:
      | configurationCategory | fieldName              | fieldOrignalValue                 | filterId         |
      | Charts Config         | Available for Profiles | PM; PO; SPI; System Administrator | ApiGeneratedId:0 |
      | Charts Config         | Display Area           | Both                              | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName              | fieldNewValue        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Config         | Available for Profiles | System Administrator | RecipientAwards    | Name                      | Grants Awarded             |
      | Charts Config         | Display Area           | Phase                | RecipientAwards    | Name                      | Grants Awarded             |
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "Automation-SPI" user
    And I navigate to "Grants" tab
    Then I do not see charts with id "chartGrantsAwardedId" displayed

  @207811 @ToVerifyAdvanceViewForAllData @sprint8
  Scenario: Charts - Admin - To verify enhanced view for all data
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Line" with title "Enhanced View"
    And I pause execution for "10" seconds
    Then I see charts with id "---program:-:EnhancedLineID---" displayed

  @208078 @VerifiedPieChart @sprint8
  Scenario: Admin - Verified that Pie chart displayed correctly on ChartTesting VF page for all available data/records
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see charts with id "---program:-:EnhancedPiechartID---" displayed

  @208587 @VerifyThatAllDataGettingDisplayedAfterClickingShowAllButton @Sprint8
  Scenario:  Verified that on clicking on Show all data button, correct data/records get displayed diferently for both the charts
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Line" with title "Enhanced View"
    When I click modal button "Show All Data"
    And I pause execution for "10" seconds
    Then I see "Awarded Amount" displayed in modal

  @207814 @VerifyEhhancedViewOnlyAfterClickingShowAllData @sprint8
  Scenario: Admin - To verify that on enhanced view, only respective record details displayed in table format on clicking on Show all data button
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Line" with title "Enhanced View"
    When I click modal button "Show All Data"
    And I pause execution for "7" seconds
    Then I see "Awarded Amount" displayed in modal

  @208118 @ChartNameDisplyedInVisualForcePage @sprint8
  Scenario: E-Charts - Admin - Verified that Pie chart (Chart name : ApplicationsDonutbyStatus) displayed correctly on ChartTesting VF page for all available data/records
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see "Enhanced Pie" displayed as chart title

  @208119 @ChartNameDisplyedInVisualForcePageAfterClickingEnhbacedView @sprint8
  Scenario:  E-Charts - Admin - Verified that Pie chart (Chart name : ApplicationsDonutbyStatus) displayed correctly on ChartTesting VF page for all specific given record
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Enhanced Pie" with title "Enhanced View"
    When I click modal button "Show All Data"
    And I pause execution for "10" seconds
    Then I see "Enhanced Pie chart" displayed in modal

  @208076 @VerifyThatDualChartName @sprint8
  Scenario: E-Charts - PM - Verified that Dual axes chart (Chart name :Program and Award Funding Status) displayed correctly on ChartTesting VF page for all available data/records
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Dual Axes 1" with title "Enhanced View"
    And I pause execution for "7" seconds
    When I click modal button "Show All Data"
    Then I see "Total Grant Awarded Amount" displayed in modal

  @208074 @VerifyThatDualChartName @sprint8
  Scenario: Charts - Admin - Verified that Dual axes chart (Chart name :Program and Award Funding Status) displayed correctly on ChartTesting VF page for all available data/records
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Dual Axes 1" with title "Enhanced View"
    And I pause execution for "7" seconds
    When I click modal button "Show All Data"
    Then I see "Total Grant Awarded Amount" displayed in modal

  @208122 @AllDataDisplayedInTableFormatAfterClickingShowAllButton @Sprit8
  Scenario:  Charts - Admin - Pie chart (Chart name : ApplicationsDonutbyStatus) - Verified that on enhanced view, all data displayed in table format on clicking on Show all data button
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    And I click on menu icon of chart "Enhanced Pie" with title "Enhanced View"
    When I click modal button "Show All Data"
    And I pause execution for "10" seconds
    Then I see "Distribution of Announcements by Grant Type" displayed in modal

  @208125 @PieChartDisplayedCorrectlyOnChartTesting @sprint8
  Scenario:  E-Charts - PM - Verified that Pie chart (Chart name : applicantPieClassBased) displayed correctly on ChartTesting VF page for all available data/records
    When I login as "Automation-PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see "Enhanced Pie" displayed as chart title

  @208131 @VerifyScatterChartNameDisplayingCorrectly @sprint8
  Scenario: E-Charts - Admin - Verified that Scatter chart (Chart name : HomeOpportunities180Days) displayed correctly on ChartTesting VF page for all specific given record
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    And I click on menu icon of chart "Enhanced Scatter with multiple points" with title "Enhanced View"
    When I click modal button "Show All Data"
    And I pause execution for "7" seconds
    Then I see "Awarded Amount" displayed in modal