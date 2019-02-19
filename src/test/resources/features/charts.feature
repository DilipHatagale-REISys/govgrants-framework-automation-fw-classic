@charts-component
Feature: Charts Component Scenarios
  Test all charts component based scenarios
  As a configuration manager i make different configurational changes in charts component and will validate them.

  @34666 @all @validateTitleField-gplanning
  Scenario: Changing chart title for 'AnnouncementByAdminBureauUnit' chart in configuration and validating inside planning-programs
    Given I have default configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue             | filterId         |
      | Charts Config         | Title     | AnnouncementByAdminBureauUnit | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue                        | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue    |
      | Charts Config         | Title     | Funding Opportunities for Automation | GrantorPlanning    | Name                      | AnnouncementByAdminBureauUnit |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Funding Opportunities for Automation" displayed as chart title

  @34667 @all @validateChartDisplayedInCorrectPhase-gAnnouncement
  Scenario: Changing chart phase config to Annoucnement for 'AnnouncementByAdminBureauUnit' chart in configuratin and validating inside annoucenment
    Given I have default configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue | filterId         |
      | Charts Config         | Phase Config | ApiGeneratedId:1  | ApiGeneratedId:2 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName         | fieldNewValue    | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue    |
      | Phase Config:General  | Tab Display Label | Announcements    | FundingOpportunity |                           |                               |
      | Phase Config:General  | Tab Display Label | Planning         | GrantorPlanning    |                           |                               |
      | Charts Config         | Phase Config      | ApiGeneratedId:0 | GrantorPlanning    | Name                      | AnnouncementByAdminBureauUnit |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Announcements" tab
    Then I see "AnnouncementByAdminBureauUnit" displayed as chart title

  @34668 @all @validateAllDataHeaders-gPlannging
  Scenario: Changing chart menu button config to "Funding Opportunity Automation" for 'AnnouncementByAdminBureauUnit' chart  in configuratin and validating inside planning
    Given I have default configuration as below:
      | configurationCategory | fieldName             | fieldOrignalValue    | filterId         |
      | Charts Details Config | All data table header | Funding Opportunity1 | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName             | fieldNewValue                  | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Details Config | All data table header | Funding Opportunity Automation | GrantorPlanning    | Name                      | CD-0147                    |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click on menu icon of chart "AnnouncementByAdminBureauUnit"
    When I select "Show All Data" from chart menu of chart "AnnouncementByAdminBureauUnit"
    Then I see "Funding Opportunity Automation" displayed in modal

  @34977 @all @validateDisablingChartLegends-gPlannging
  Scenario: Disable chart legends for 'AnnouncementByAdminBureauUnit' chart in configuratin and validating inside planning
    Given I have default configuration as below:
      | configurationCategory | fieldName      | fieldOrignalValue | filterId         |
      | Charts Details Config | Disable Legend | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName      | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Details Config | Disable Legend | true          | GrantorPlanning    | Name                      | CD-0147                    |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see chart legends are not displayed for chart "AnnouncementByAdminBureauUnit"

  @34981 @all @validateX-axisLabel-gPlannging
  Scenario: Change chart x-axis label for 'Funding Sources by Total Amount' chart in configuratin and validating inside planning
    Given I have default configuration as below:
      | configurationCategory | fieldName    | fieldOrignalValue      | filterId         |
      | Charts Details Config | X-Axis Label | Total Allocated Amount | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName    | fieldNewValue                     | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Details Config | X-Axis Label | Total Allocated Amount Automation | GrantorPlanning    | Name                      | CD-0159                    |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "Total Allocated Amount Automation" for chart "FundingSourcesbyTotalAmount"

  @34985 @all @validateX-axisPrefix-gPlannging
  Scenario: Change chart x-axis prefix as $ for 'Funding Sources by Total Amount' chart in configuratin and validating inside planning
    Given I have default configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Details Config | X-Axis Prefix |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Details Config | X-Axis Prefix | $             | GrantorPlanning    | Name                      | CD-0159                    |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "$" for chart "FundingSourcesbyTotalAmount"

  @35086 @all @validateXFormattedNubers-gPlannging
  Scenario: Enable x-formatted numbers for 'Funding Sources by Total Amount' chart in configuratin and validating inside planning
    Given I have default configuration as below:
      | configurationCategory | fieldName          | fieldOrignalValue | filterId         |
      | Charts Details Config | X Formatted Number | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName          | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Details Config | X Formatted Number | true          | GrantorPlanning    | Name                      | CD-0159                    |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see ",000" for chart "FundingSourcesbyTotalAmount"

  @34984 @all @validateX-axisSuffix-gPlannging
  Scenario: Change chart x-axis suffix as $ for 'Funding Sources by Total Amount' chart in configuratin and validating inside planning
    Given I have default configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | filterId         |
      | Charts Details Config | X Axis Suffix |                   | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Charts Details Config | X Axis Suffix | $             | GrantorPlanning    | Name                      | CD-0159                    |
    When I login as "Automation" user
    When I navigate to "GovGrants Launcher Tab" tab
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I see "$" for chart "FundingSourcesbyTotalAmount"
	