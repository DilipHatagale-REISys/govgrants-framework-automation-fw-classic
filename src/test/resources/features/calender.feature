@calenderConfig-component @regression @calenderConfig
Feature: Calender Config Component Scenarios
  Test all calender config component based scenarios
  As a configuration manager i make different configurational changes in calender component and will validate them.

  @35124    @activeFieldAtCalenderConfig
  Scenario: Disabling program from calender after changing confiuration and validating calender grantor-Home
    Given I have "default" configuration as below:
      | configurationCategory| fieldName  | fieldOrignalValue | filterId         |
      | Calender Config      | Active     | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory  | fieldName  | fieldNewValue  | coreComponentField  |
      | Calender Config:General| Active     | false          | Grantor_Home_Program|
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "HOME" tab
    When I click on "My_Workspace_Calendar"
    Then I see all programs inside calender is not displayed