@SheetJS-component @regression
Feature: SheetJS Config Component Scenarios
  Test all Sheet JS config component based scenarios
  As a configuration manager i make different configurational changes in sheetJS component and will validate them.

  @70095    @verifyUploadTopLevelButton
  Scenario: Validate Auto Snapshot is not getting captured after record submission as submit for approval
    Given I have "default" configuration as below:
      | configurationCategory | fieldName                 | fieldOrignalValue | filterId         |
      | Flex Table            | Enable Data Import/Export | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName                 | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table:General    | Enable Data Import/Export | true          | Programs           |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    Then I can see top right button "Upload" in flex table with id "flexTableDivId"
