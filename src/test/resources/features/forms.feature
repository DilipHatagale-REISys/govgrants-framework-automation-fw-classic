@forms-component @regression
Business Need: Forms Component Scenarios
  Test all forms component based scenarios
  As a configuration manager i make different configurational changes in forms component and will validate them.

  @35185    @validateBusinessFormsRemoval-gApplication
  Scenario: Validate disabling of business form from config and validating inside Application view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Block            | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory        | fieldName | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block:Page Block Detail | Is Active | false         | ApplicationView    | GNT__PageBlockTitle__c    | Business Forms             |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Attachments" sub tab
    Then I see Business Form section is not displayed

  @35189    @hidingPreviewActionItemForUsersInsideBusinessForms-gApplication @smoke
  Scenario: Validate disabling preview of business form action item from config and validating inside Application view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block Rule       | Hide For User |                   | ApplicationView    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide For User | Internal      | ApplicationView    | Name                      | preview rule               |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Attachments" sub tab
    Then I see "Preview" action item is not displayed inside business form

  @35193    @hidingViewActionItemForUsersInsideBusinessForms-gApplication
  Scenario: Validate disabling View of business form action item from config and validating inside Application view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | coreComponentField | filterId         |
      | Page Block Rule       | Hide For User |                   | ApplicationView    | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                  | fieldName     | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Rule:Page Block Rule Detail | Hide For User | Internal      | ApplicationView    | Name                      | View                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Attachments" sub tab
    Then I see "View" action item is not displayed inside business form

  @35271    @changeLabelOfEditFormPageLayoutActionItem-gApplication @smoke
  Scenario: Validate label change of edit action button at form page layout action from config and validating inside Application form view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName   | fieldOrignalValue | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Action Name | Edit              | Application Cover Page | Name                      | Edit Automation            |
    Given I setup test configuration as below:
      | configurationCategory | fieldName   | fieldNewValue   | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Action Name | Edit Automation | Application Cover Page | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Cover Page" program in flex table
    Then I see changed label as "Edit Automation" of action item inside form page layout

  @35290    @hidingOfEditFormPageLayoutActionItemForUser-gApplication
  Scenario: Validate disabling of edit action button at form page layout action from config and validating inside Application form view
    Given I have "default" configuration as below:
      | configurationCategory | fieldName     | fieldOrignalValue | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide For User |                   | Application Cover Page | Name                      | Edit                       |
    Given I setup test configuration as below:
      | configurationCategory | fieldName     | fieldNewValue | coreComponentField     | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout Action    | Hide For User | Internal      | Application Cover Page | Name                      | Edit                       |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Cover Page" program in flex table
    Then I see "Edit" of action item inside form page layout is not displayed

  @37856    @headerFieldAtFormLayout-gApplication @smoke
  Scenario: Changing header name for particular form inside application phase from config and validating it at application form detail page
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue  | filterId         |
      | Page Layout           | Header    | Application Simple | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName | fieldNewValue   | coreComponentField   | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Layout:General   | Header    | Test Automation | Application - Simple |                           |                            |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "AP-755-198"
    When I click on "View" icon for "Test announcement for program 2" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    Then I see "Test Automation" shown as over view header

  @83501 @verifyEnhancedGridWithHeaderIsDisplayedOnFormPreviewPage-gAnnouncement
  Scenario:validate that enhanced grid with header is displayed on forms preview layout
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    Then I see "Monitoring Schedule For All Active Grants" shown as inside "---program:-:enhancedGridTableId---"

  @83505 @verifyEnhancedDataTableWithHeaderIsDisplayedOnFormPreviewPage-gAnnouncement
  Scenario:validate that enhanced data table with header is displayed on forms preview layout
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Budget Form" program in flex table
    Then I see "Monitoring Schedule For All Active Grants" shown as inside "---program:-:TmpActiveGrantsGridTableId---"

  @102056 @verifyTheSwitchKeywordIsDisplayedCorrectlyInsideConfirmationBoxAtFormPreviewPage-gAnnouncement
  Scenario:validate switch is displayed correctly in confirmation box on forms preview layout
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                 | name                               |
      | true         | 0            | a0b1C00000N9XxsQAF | hideBusinessFormFieldOnEdit | hideBusinessFormFieldOnEdit record |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                 | name                               |
      | false        | 0            | a0b1C00000N9XxsQAF | hideBusinessFormFieldOnEdit | hideBusinessFormFieldOnEdit record |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I click on "Edit" in the page details
    When I select "General Application Cover Page" from dropdown at forms
    Then I see the text containing :
      | switch |

  @102060 @verifyThatOKKeywordIsDisplayedCorrectlyInsideConfirmationBoxAtFormPreviewPage-gAnnouncement
  Scenario:validate OK is displayed correctly in confirmation box on forms preview layout
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                 | name                               |
      | true         | 0            | a0b1C00000N9XxsQAF | hideBusinessFormFieldOnEdit | hideBusinessFormFieldOnEdit record |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                 | name                               |
      | false        | 0            | a0b1C00000N9XxsQAF | hideBusinessFormFieldOnEdit | hideBusinessFormFieldOnEdit record |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I click on "Edit" in the page details
    When I select "General Application Cover Page" from dropdown at forms
    Then I see the text containing :
      | Ok |

  @102058 @verifyThatDifferentWordIsDisplayedCorrectlyInsideConfirmationBoxAtFormPreviewPage-gAnnouncement
  Scenario:validate different is displayed correctly in confirmation box on forms preview layout
    Given I have "lightening" configuration as below:
      | booleanValue | integerValue | id                 | description                 | name                               |
      | true         | 0            | a0b1C00000N9XxsQAF | hideBusinessFormFieldOnEdit | hideBusinessFormFieldOnEdit record |
    And I update custom setting changes:
      | booleanValue | integerValue | id                 | description                 | name                               |
      | false        | 0            | a0b1C00000N9XxsQAF | hideBusinessFormFieldOnEdit | hideBusinessFormFieldOnEdit record |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Test Application For Automation"
    When I click on "View" icon for "Test Application For Automation" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I click on "Edit" in the page details
    When I select "General Application Cover Page" from dropdown at forms
    Then I see the text containing :
      | different |

  @103084 @verifyThatEnhancedGridIsDisplayedAtFormPreviewPage-gApplications
  Scenario:validate enhanced grid is displayed at forms preview layout
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Preview" icon of form "General Application Form" program in flex table
    Then I see expected table with id "---program:-:tmpActiveGrantsGridTableId---"

  @103092 @verifyThatEnhancedGridIsDisplayedAtFormViewPage-gApplications
  Scenario:validate enhanced grid is displayed at forms view layout
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    Then I see expected table with id "---program:-:tmpActiveGrantsGridTableId---"

  @103093 @verifyThatEnhancedGridIsDisplayedAtFormEditPage-gApplications
  Scenario:validate enhanced grid is displayed at forms edit layout
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    When I perform quick search for "Demo_Title"
    When I click on "View" icon for "Demo_Title" inside table
    When I navigate to "Attachments" sub tab
    When I click on "View" icon of form "General Application Form" program in flex table
    When I click on "Edit" in the page details
    Then I see expected table with id "---program:-:tmpActiveGrantsGridTableId---"