@sendEmail-component @regression-test5 @sendEmail
Business Need: Send Email Component Scenarios
  Test all send email component based scenarios
  As a configuration manager i make different configurational changes in send email component custom metadata and will validate them.

  @69004 @validateDisplayOfAttachmentComponentInSendEmailModal
  Scenario: Enabling Attachment section from custom metadata config and validating display of attachments in send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see Attachment section is displayed under send email modal



  @69094 @validateIfExternalCheckboxCheckedAtToFieldThenOnlyExternalUserIsShownInAutoSuggestionBox
  Scenario: Validate If External checkbox is checked At To Field then only external user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    Then I see iconName "fa fa-phone" with user "Automation SPI" is displayed on send email modal
    Then I see iconName "fa fa-phone" with user "Automation PK" is displayed on send email modal

  @69096 @validateIfGroupCheckboxCheckedAtToFieldThenOnlyUserGroupsIsShownInAutoSuggestionBox
  Scenario: Validate If Group checkbox is checked At To Field then only Group is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    Then I see iconName "fa fa-users" with user "group 1" is displayed on send email modal

  @69214 @validateIfInternalCheckboxCheckedAtCCFieldThenOnlyInternalUserIsShownInAutoSuggestionBox
  Scenario: Validate If internal checkbox is checked at CC field then only internal user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    Then I see iconName "fa fa-user" with user "Automation PM" is displayed on send email modal

  @69215 @validateIfExternalCheckboxCheckedAtCCFieldThenOnlyExternalUserIsShownInAutoSuggestionBox @needToUpdate
  Scenario: Validate If External checkbox is checked At CC Field then only external user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName       |
      | Automation PM  |
      | Automation SPI |

  @69216 @validateIfInternal+ExternalCheckboxCheckedAtCCFieldThenBothUserIsShownInAutoSuggestionBox @needToUpdate
  Scenario:Verify if Internal+External user checkbox is checked and search user in CC email then both Internal+External users is displayed in suggestion
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName       |
      | Automation PM  |
      | Automation FO  |
      | Automation EXE |

  @69090 @validateIfAttachmentUploadedAndEmailSendThenEmailIsSentWithUploadedFile
  Scenario: Validate If attachment uploaded and email is send then email is sent with uploaded attachment under send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test attachment uploaded" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal

  @81106 @validateAtReplyModalIfInternalCheckboxCheckedAtCCFieldThenOnlyInternalUserIsShownInAutoSuggestionBox
  Scenario: Validate while replying to email If internal checkbox is checked at CC field then only internal user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "Test automation mail subject 1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "reply" icon for "Test automation mail subject 1" inside table
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    Then I see iconName "fa fa-user" with user "Automation PM" is displayed on send email modal

  @81118 @validateAtReplyModalIfExternalCheckboxCheckedAtCCFieldThenOnlyExternalUserIsShownInAutoSuggestionBox @needToUpdate
  Scenario: Validate while replying to email If internal checkbox is checked at CC field then only internal user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "checkbox is checked at CC" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I click on "Reply" icon for "checkbox is checked at CC" inside table
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "DILIP" into field "{testData:CcField}" on send email modal
    Then I see iconName "fa fa-user" with user "DILIP Hatagale" is displayed on send email modal

  @81120 @validateAtReplyModalIfInternal+ExternalCheckboxCheckedAtCCFieldThenBothUserIsShownInAutoSuggestionBox @needToUpdate
  Scenario: Validate while replying to email If internal checkbox is checked at CC field then only internal user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "checkbox is checked at CC" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I click on "Reply" icon for "checkbox is checked at CC" inside table
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Au" into field "{testData:CcField}" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName       |
      | Automation PM  |
      | Automation EXE |

  @89268 @validateTheItemsPresentInSearByFieldDropDownAtTOEmailFieldAtSendEmailModal @sendEmail
  Scenario: Validate the options present under search by field dropdown at TO email field at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field
    Then I softly see "{testData:ToField}" email search by field contains dropdown value as "Internal"
    Then I softly see "{testData:ToField}" email search by field contains dropdown value as "External"
    Then I softly see "{testData:ToField}" email search by field contains dropdown value as "Groups"

  @89269 @validateTheItemsPresentInSearByFieldDropDownAtCCEmailFieldAtSendEmailModal @sendEmail
  Scenario: Validate the options present under search by field dropdown at CC email field at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field
    Then I softly see "{testData:CcField}" email search by field contains dropdown value as "Internal"
    Then I softly see "{testData:CcField}" email search by field contains dropdown value as "External"
    Then I softly see "{testData:CcField}" email search by field contains dropdown value as "Groups"

  @89615 @validateEmailSubjectWithSpecialCharacterIsShownProperlyInViewModal @sendEmail
  Scenario: Validate special characters present under subject in sent email view modal are displayed properly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I pause execution for "2" seconds
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "1@&%#$*\|/test;:!<>?[]{}()" into field "Subject" on send email modal
    When I enter value "1@&%#$*\|/test;:!<>?[]{}()" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "1@&%#$*\|/test;:!<>?[]{}()" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "1@&%#$*\|/test;:!<>?[]{}()" inside table
    Then I see "1@&%#$*\|/test;:!<>?[]{}()" as "Subject" on send email modal

  @89619 @validateEmailBodyWithSpecialCharacterIsShownProperlyInViewModal @sendEmail
  Scenario: Validate special characters present under body in sent email view modal are displayed properly    Given I have "default" configuration as below:
  | configurationCategory | fieldName | fieldOrignalValue | filterId         |
  | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "1@&%#$*\|/test;:!<>?[]{}()" into field "Subject" on send email modal
    When I enter value "1@&%#$*\|/test;:!<>?[]{}()" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "1@&%#$*\|/test;:!<>?[]{}()" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "1@&%#$*\|/test;:!<>?[]{}()" inside table
    Then I see "1@&%#$*\|/test;:!<>?[]{}()" as "Body Content" on send email modal

  @89617 @validateReplyEmailSubjectAndBodyWithSpecialCharacterIsShownProperlyInReplyEmailViewModal @sendEmail
  Scenario: Validate special characters present under body and subject in reply mail on send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "test@123.com" into field "{testData:ToField}" on send email modal
    When I enter value "DO NOT DELETE EMAIL @&%#$*\|/test;:!<>?[]{}()" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "DO NOT DELETE EMAIL @&%#$*\|/test;:!<>?[]{}()" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "DO NOT DELETE EMAIL @&%#$*\|/test;:!<>?[]{}()" inside table
    When I enter value "body @&%#$*\|/test;:!<>?[]{}()" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "RE: DO NOT DELETE EMAIL @&%#$*\|/test;:!<>?[]{}()" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "RE: DO NOT DELETE EMAIL @&%#$*\|/test;:!<>?[]{}()" inside table
    Then I softly see "RE: DO NOT DELETE EMAIL @&%#$*\|/test;:!<>?[]{}()" as "Subject" on send email modal
    Then I softly see "body @&%#$*\|/test;:!<>?[]{}()" as "Body Content" on send email modal

  @89743 @validateReplyModalTitleAtSendEmail @sendEmail
  Scenario: Validate reply modal title at send email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Validate reply modal title" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I perform quick search for "Validate reply modal title" in "---program:-:communicationHistoryTableId---" panel
    When I click on "reply" icon for "Validate reply modal title" inside table
    Then I see "Reply" opens in overLay window

  @89675 @validateThatFileIsDeletedSuccessfullyByclickOnCrossIconAtAttachedFileInSendEmailModal @sendEmail
  Scenario: Validate that attached file is deleted successfully by click on cross icon at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test automation mail subject 1" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on cross icon at "SendEmailAttachment.pdf" attachment inside send email modal
    Then I see attached file "SendEmailAttachment.pdf" is deleted successfully inside send email modal

  @89677 @validateThatFileIsDeletedSuccessfullyFromMultipleFilesByclickOnCrossIconAtAttachedFileInSendEmailModal @sendEmail
  Scenario: Validate that attached file is deleted successfully from multiple uploaded file by click on cross icon at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test automation mail subject 1" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I upload attachment "AttachmentTesting.pdf" in send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    When I click on cross icon at "SendEmailAttachment.pdf" attachment inside send email modal
    And I pause execution for "3" seconds
    Then I see attached file "SendEmailAttachment.pdf" is deleted successfully inside send email modal

  @90397 @validateDisplayOfRequiredFieldvalidationMessageInSendEmailModal @sendEmail
  Scenario: Validate if required field value is not entered and click on save then alert message is displayed on send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "Test automation mail subject 1" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I see the following messages in the page details contains:
      | Enter To Email Address. |

  @90390 @validateToEmailSuggestionBoxSizeIfGreaterThan5RecordAreSuggestedInSendEmailModal @sendEmail @needToUpdateLogic
  Scenario: Validate suggested email's box size at To field if more than 5 records are suggested inside send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "test" into field "{testData:ToField}" on send email modal
    Then I see search item display box size at "{testData:ToField}" field is proper for "greater than 5" results

  @90388 @validateToEmailSuggestionBoxSizeIfLessThan5RecordAreSuggestedInSendEmailModal @sendEmail
  Scenario: Validate suggested email's box size at To field if less than 5 records are suggested inside send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "David PM" into field "{testData:ToField}" on send email modal
    Then I see search item display box size at "{testData:ToField}" field is proper for "Less than 5" results

  @89234 @validateDisplayOfToEmailSentSUccessfullyMessageInSendEmailModal @sendEmail
  Scenario: Validate if reply email is sent then alert message is displayed on send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test Email Sent Succesfully" into field "Subject" on send email modal
    When I enter value "Test Email Sent Succesfully" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "Test Email Sent Succesfully" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I see "Email Sent Successfully." message is displayed on Send Email Modal

  @89725 @validateAsteriskMarkAtRequiredFieldsInSendEmailModalAtViewSendEmailWindow @sendEmail
  Scenario: Validate asterisk mark is displayed at required fields in send email modal at view mail window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "asterisk mark view modal" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I perform quick search for "asterisk mark view modal" in "---program:-:communicationHistoryTableId---" panel
    When I perform quick search for "asterisk mark view modal" in "---program:-:communicationHistoryTableId---" panel
    When I click on "view" icon for "asterisk mark view modal" inside table
    Then I see current date is displayed in "View" on send email modal

  @91328 @validateAsteriskMarkAtRequiredFieldsInSendEmailModalAtReplyMailWindow @sendEmail
  Scenario: Validate asterisk mark is displayed at required fields in send email modal at reply mail window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test asterisk mark" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test asterisk mark" in "---program:-:communicationHistoryTableId---" panel
    When I click on "reply" icon for "Test asterisk mark" inside table
    Then I see asterisk mark at "{testData:ToField}" field is displayed at send email modal

  @101035 @validateSentDateOfEmailInISTModeAtSendEmailModal @wip
  Scenario: Validate send date of an email on send email modal for IST time zone
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test automation mail subject1" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "15" seconds
    When I perform quick search for "Test automation mail subject1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "view" icon for "Test automation mail subject1" inside table
    Then I softly see "7/11/2023" on html page

  @101041 @validateSentDateOfEmailInEDTModeAtSendEmailModal @wip
  Scenario: Validate send date of an email on send email modal for EDT time zone
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test automation mail subject2" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "15" seconds
    When I perform quick search for "Test automation mail subject2" in "---program:-:communicationHistoryTableId---" panel
    When I click on "view" icon for "Test automation mail subject2" inside table
    Then I softly see "11/07/2023" on html page

  @101042 @validateSentDateOfEmailInESTModeAtSendEmailModal
  Scenario: Validate send date of an email on send email modal for EST time zone
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
#    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
#    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
#    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
#    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
#    When I enter value "Test automation mail subject 1" into field "Subject" on send email modal
#    When I click on "Send" button in send email modal
#    When I close modal by clicking the top right x button
#    When I click on "view" icon for "Test automation mail subject 1" inside table
#    Then I softly see "7/31/2023 " on html page

  @102057 @validateDisplayOfSelectFilesComponentInSendEmailModal @needManagedAPI @wip
  Scenario: Enabling select files section from custom metadata config and validating display of attachments in send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see select files section is displayed under send email modal

  @102059 @validateSelectFilesComponentIsNotDisplayedWhenCheckboxIsUncheckedInCustomMetadataInSendEmailModal  @needManagedAPI @wip
  Scenario: disabling select files section from custom metadata config and validating display of attachments in send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I do not see select files section is displayed under send email modal

  @102090 @validateThatSelectFilesModalIsDisplayedByClickOnSelectFileSectionInSendEmailModal  @needManagedAPI @wip
  Scenario: validate that select file modal is displayed by click on select files section in send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I have "customMetaData" configuration as below:
      | id                 | label                          | booleanValue | customMetaDataApiName    |
      | m031C000000XZXyQAO | SendEmailFilesLinkConfigHolder | false        | GNT__KeyValueHolder__mdt |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    And I update custom metadata setting changes:
      | id                 | label                          | booleanValue | customMetaDataApiName    |
      | m031C000000XZXyQAO | SendEmailFilesLinkConfigHolder | true         | GNT__KeyValueHolder__mdt |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click modal button "Select Files"
    Then I see "Select File(s)" modal window is displayed

  @102092 @validateThatByClickOnSelectFileModalWindowAddFileWindowDisappearsUnderSendEmailModal  @needManagedAPI @wip
  Scenario: validate that by click on select file modal window, add file modal disappears and send email modal displays
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I have "customMetaData" configuration as below:
      | id                 | label                          | booleanValue | customMetaDataApiName    |
      | m031C000000XZXyQAO | SendEmailFilesLinkConfigHolder | false        | GNT__KeyValueHolder__mdt |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    And I update custom metadata setting changes:
      | id                 | label                          | booleanValue | customMetaDataApiName    |
      | m031C000000XZXyQAO | SendEmailFilesLinkConfigHolder | true         | GNT__KeyValueHolder__mdt |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click modal button "Select Files"
    When I click on "×" icon at "Select File(s)" modal under Library
    Then I see "Select File(s)" modal is closed

  @102237 @validateThatFileUploadedFromSelectFileSectionIsDisplayedUnderSendEmailModalInEditMode
  Scenario: validate that file uploaded from select files section in send email modal in view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "10" seconds
    When I close modal by clicking the top right x button
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal

  @102238 @validateThatFileIsDeletedSuccessfullyByclickOnCrossIconAtSelectectFileInSendEmailModal @sendEmail
  Scenario: Validate that selected file is deleted successfully by click on cross icon at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click modal button "Select Files"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "10" seconds
    When I close modal by clicking the top right x button
    When I click on cross icon at "actionsAtEgrid.png" attachment inside send email modal
    And I pause execution for "10" seconds
    Then I see attached file "actionsAtEgrid.png" is deleted successfully inside send email modal

  @102239 @validateThatFileUploadedFromSelectFileSectionIsDisplayedUnderSendEmailModalInViewMode
  Scenario: validate that file uploaded from select files section in send email modal in view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I enter value "Demo Email select files" into field "Subject" on send email modal
    And I click modal button "Select Files"
    When I check "TC Collab.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    Then I see attachment "TC Collab.png" is present in send email modal

  @101273 @SentDateOfEmailAtSendEmailModalForNewlyCreatedRecord
  Scenario: Validate send date of an email on send email modal for newly created record
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "DND Email Created To Check Date" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "DND Email Created To Check Date" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "DND Email Created To Check Date" inside table
    Then I see current date is displayed in "Send Date" on send email modal

  @102240 @validateDisplayOfHypelinkInsertedAtSelectFileSectionWhileSendingEmil @wip @functionalityDeprecated
  Scenario: Validate if email is sent by inserting link then a hyperlink is displayed inside message table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios1}"
    When I click on "View" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios1}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "Email Created To Check Attached File Link" in "---program:-:communicationHistoryTableId---" panel
    Then I see hyperlink at column value "ProgramRecordDoNotDelete.png" inside "---program:-:communicationHistoryTableId---" table

  @104344 @validateDisplayOfSelectFilesComponentInSendEmailModalAtReply
  Scenario: Enabling select files section from custom metadata config and validating display of attachments in send email modal at reply
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "dilip.hatagale@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automat@invalid.com" into field "{testData:CcField}" on send email modal
    When I enter value "select files section Demo" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "select files section Demo" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "select files section Demo" inside table
    Then I see select files section is displayed under send email modal

  @104330 @validateDisplayOfHyperlinkAtSelectFileNameInsideBodyAtReplyModal
  Scenario: validate hyperlink is displayed for the selected linked file name inside body at reply modal window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "dilip.hatagale@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation@gmail.com" into field "{testData:CcField}" on send email modal
    When I enter value "Email Created To Check Attached File Link" into field "Subject" on send email modal
    When I enter value "Email Created To Check Attached File Link" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal
    When I close "Send Email" modal by clicking on x top right button
    When I navigate to "Collab" sub tab
    When I perform quick search for "Email Created To Check Attached File Link" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "Email Created To Check Attached File Link" inside table
    Then I see hyperlink is present at "SendEmailAttachment.pdf" in rich text area field

  @104328 @validateDisplayOfHyperlinkAtSelectFileNameInsideBodyAtViewModal
  Scenario: validate hyperlink is displayed for the selected linked file name inside body at view modal window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "dilip.hatagale@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    When I enter value "Demo Email select files" into field "Subject" on send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal
    Then I see hyperlink at value "SendEmailAttachment.pdf" inside "sendEmail" modal

  @116303 @validateIfOneMailIdIsRemovedFromReplyEmailToFieldThenEmailSentSuccessfullyOnIt
  Scenario: Validate if one email id is removed from reply modal TO field then email sent successfully
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "test@123.com;test@gmail.com" into field "{testData:ToField}" on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I enter value "Test Automation Email1" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "Test Automation Email1" inside table
    When I enter value "test@gmail.com" into field "{testData:ToField}" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Re: Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    Then I see "RE: Test Automation Email1" value in flex table id "---program:-:communicationHistoryTableId---"

  @116290 @validateNameIsDisplayedForExternalUserSelectedInToFieldInViewMode @needToUpdate
  Scenario: Validate if external user selected in TO field then name of user is displayed in view modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Dilip DM" into field "{testData:ToField}" on send email modal
    When I select value "Dilip DM" with iconName "fa fa-phone" into field on send email modal
    When I enter value "test the email for external user" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "test the email for external user" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "test the email for external user" inside table
    Then I softly see "Dilip DM" on html page

  @116243 @validateNameIsDisplayedForSelectedUserInToFieldAtReplyMailWhenOpenInViewMode @needToUpdate
  Scenario: Validate if external user selected in TO field at reply email then name of user is displayed in view modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "dilip@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation@gmail.com" into field "{testData:CcField}" on send email modal
    When I enter value "external user selected in TO" into field "Subject" on send email modal
    When I enter value "external user selected in TO" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close "Send Email" modal by clicking on x top right button
    When I navigate to "Collab" sub tab
    When I perform quick search for "external user selected in TO" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "external user selected in TO" inside table
    Then I softly see "dilip@reisystems.in" on html page
    Then I softly see "Automation@gmail.com" on html page

  @116299 @validateGroupNameIsDisplayedForSelectedGroupInToAndCCFieldAtViewAndReplyMailWhenOpenInViewMode  @wip @BugLogged_161456
  Scenario: Validate if group is selected in TO field at email and reply email modal then name of group is dsplayed in view modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "Automation Testing Group" into field "{testData:ToField}" on send email modal
    When I select value "Automation Testing Group" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Test Automation Email1" inside table
    Then I softly see "Automation Testing Group" on html page

  # @116299 to validate group name in cc email at reply email modal -
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "Test Automation Email1" inside table
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "Automation Testing Group" into field "{testData:CcField}" on send email modal
    When I select value "Automation Testing Group" with iconName "fa fa-users" into field on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Re: Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Re: Test Automation Email1" inside table
    Then I softly see "Automation Testing Group" on html page

  @116300 @validateToAndCCUserNameIsDisplayedInsideBodyFieldAtViewAndReplyMailWhenOpenInViewMode @needToUpdate
  Scenario: Validate that TO and CC email displayed properly inside body field at reply and email modal in view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM1" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM1" with iconName "fa fa-user" into field on send email modal
    When I enter value "TO and CC email displayed properly" into field "Subject" on send email modal
    When I enter value "Test Mail Body Content" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I navigate to "Collab" sub tab
    When I perform quick search for "TO and CC email displayed properly" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "TO and CC email displayed properly" inside table
    Then I softly see "Test Mail Body Content" as "Body Content" on send email modal

  # @116300 to validate user name in body content at reply email modal -
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "TO and CC email displayed properly" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "TO and CC email displayed properly" inside table
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "View" icon for "TO and CC email displayed properly" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Test Mail Body Content" as "Body Content" on send email modal

  @116304 @validateIfUserRemovesNameFromToEmailThenAutoSuggestionBoxDisappearsFromToEmailField @needToUpdate
  Scenario: Validate if user remove name from To email and keep the To email field blank then auto suggestion box disappears
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal
    When I enter value "" into field "{testData:ToField}" on send email modal
    Then I softly do not see user suggestion box displayed at send email modal

  @118790 @validateEmailIsSentSuccessfullyToMultipleGroupsAndIsDisplayedInToFieldAtSendEmailModal
  Scenario: Validate if multiple group is selected in TO field at email modal then email sent successfully and name displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I softly see "group 1" on html page

  @121365 @validateThatMultipleFilesUploadedFromSelectFileSectionIsDisplayedUnderSendEmailModalInEditMode
  Scenario: validate that multiple files uploaded from select files section in send email modal in view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test multiple file" into field "Subject" on send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "TC Collab.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "4" seconds
    When I close modal by clicking the top right x button
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal
    Then I see attachment "TC Collab.png" is present in send email modal


  @147282  @verifyTextInsideCkEditorInputBoxIsDisplayedAsItalicInsideSendEmailModal
  Scenario: validate text inside ck editor input box is displayed as italic text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Italic" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "Italic" format inside CK editor

  @147285  @verifyTextInsideCkEditorInputBoxIsDisplayedAsUnderlineInsideSendEmailModal
  Scenario: validate text inside ck editor input box is displayed as underline text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Underline" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "Underline" format inside CK editor

  @147288  @verifyTextInsideCkEditorInputBoxIsDisplayedAsStrikeThroughInsideSendEmailModal
  Scenario: validate text inside ck editor input box is displayed as Strike Through text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
#    And I change formatting of all text to "Deleted Text" inside CK editor
    And I change style of all text to "Deleted Text" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "Deleted Text" format inside CK editor

  @147301  @verifyTextInsideCkEditorInputBoxIsDisplayedAsplainTextInsideSendEmailModal
  Scenario: validate text inside ck editor input box is displayed as plain text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Underline" inside CK editor
    And I change formatting of all text to "Remove Format" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "Plain" format inside CK editor

  @147337  @verifyTextInsideCkEditorInputBoxIsDisplayedAsNumberedListInsideSendEmailModal
  Scenario: validate text inside ck editor input box is displayed as "Numbered List" text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Insert/Remove Numbered List" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "NUMBERED LIST" format inside CK editor

  @147358  @verifyTextInsideCkEditorInputBoxIsNotDisplayedAsNumberedListButAsNormalInsideSendEmailModal
  Scenario: validate text inside ck editor input box is not displayed as "Numbered List" text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Insert/Remove Numbered List" inside CK editor
    And I change formatting of all text to "Insert/Remove Numbered List" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "PLAIN" format inside CK editor

  @147455  @verifyTextInsideCkEditorInputBoxIsDisplayedAsBulletedListInsideSendEmailModal
  Scenario: validate text inside ck editor input box is displayed as "Bulleted List" text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Insert/Remove Bulleted List" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "BULLET LIST" format inside CK editor

  @147374  @verifyTextInsideCkEditorInputBoxIsNotDisplayedAsBulletedListButAsNormalInsideSendEmailModal
  Scenario: validate text inside ck editor input box is not displayed as "Bulleted List" text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Insert/Remove Bulleted List" inside CK editor
    And I change formatting of all text to "Insert/Remove Bulleted List" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "PLAIN" format inside CK editor

  @147909  @verifyTextInsideCkEditorInputBoxIsDisplayedAsBlockQuoteInsideSendEmailModal
  Scenario: validate text inside ck editor input box is displayed as "Block Quote" text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Block Quote" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "Block Quote" format inside CK editor

  @147374  @verifyTextInsideCkEditorInputBoxIsNotDisplayedAsBlockQuoteButAsNormalInsideSendEmailModal @wip
  Scenario: validate text inside ck editor input box is not displayed as "Block Quote" text at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation" into field "Subject" on send email modal
    When I enter value "Test Body formatting" into field "Body Content" on send email modal
    And I change formatting of all text to "Formatting Styles" inside CK editor
    When I click on "Send" button in send email modal
    Then I see "Test Body formatting" displayed in "PLAIN" format inside CK editor

  @149357 @validateThatFilesUploadedFromSelectFileSectionIsDisplayedIntoToReceiversEmail
  Scenario: validate that files uploaded from select files section is displayed in to receivers email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "dilip.hatagale@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I enter value "Test Automation Email1" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "4" seconds
    When I click on "Send" button in send email modal
    And I pause execution for "10" seconds
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    Then I see the text "SendEmailAttachment.pdf" inside Body

  @150755 @SendCopyCCToMeFieldIsPresentOnModalWhileSendingEmail
  Scenario: Validate display of "Send Copy (Cc) to Me" field on send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see the text "Send Copy (Cc) to Me" in send email page

  @150757 @verifyHelpTextAtSendCopyCCToMeFieldIsPresentOnModalWhileSendingEmail
  Scenario: Validate display help text at "Send Copy (Cc) to Me" field on send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hovering mouse on help text icon at "{testData:SendCopyCheckbox}" inside send email modal
    Then I see "Enable this checkbox to include yourself in Cc" shown at mouse hover inside "sendEmail" table

  @150758 @verifyIfSendCopyCCToMeFieldIsCheckedThenLoggedInUserMilIdIsDisplayedInCCField
  Scenario: Validate display help text at "Send Copy (Cc) to Me" field on send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I hover mouse on text "Send Copy (Cc) to Me" inside Send Email Modal
    Then I see help text "Enable this checkbox to include yourself in Cc" is displayed related field "Send Copy (Cc) to Me" inside Send Email

  @141604    @validateSuccessMsgDisplayedBySendingEmailSuccessFullyByLoginAsAdminUser
  Scenario: validate success msg displayed by sucessfully sending of email by admin user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "test@gmail.com" into field "{testData:ToField}" on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I enter value "Test Automation Email1" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I see the following messages in the page details :
      | Email Sent Successfully. |

  @159444 @validateAttentionToFieldValueAtSendEmailMessageTable @wip
  Scenario: Validate Attention To field at reply email inside message table at send email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Temp Record" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Temp Record" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "Temp Record" inside table
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Temp Record" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "" for title "Attention To" inside table "---program:-:PlanningFilesFlexGridId---"

  @163532 @ValidateUserSelectInternalToFieldItShowActiveInternalUserWithStandardUser
  Scenario: Validate User Select Internal To Field It Show Active Internal User With Standard User
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "dilip" into field "{testData:ToField}" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName       |
      | DILIP Hatagale |

  @163533 @ValidateUserSelectInternalCcFieldItShowActiveInternalUserWithStandardUser
  Scenario: Validate User Select Internal Cc Field It Show Active Internal User With Standard User
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "dilip" into field "{testData:CcField}" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName       |
      | DILIP Hatagale |

  @163534 @ValidateUserSelectInternalToFieldItShowActiveInternalUserWithStandardUserAndShowContactOfUser
  Scenario: Validate User Select Internal To Field It Show Active Internal User With Standard User And Show Contact Of User
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Tejashree" into field "{testData:ToField}" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName            |
      | Tejashree Tejashree |
      | Tejashree Damdhar   |

  @163535 @ValidateUserSelectInternalCcFieldItShowActiveInternalUserWithStandardUserAndShowContactOfUser
  Scenario: Validate User Select Internal Cc Field It Show Active Internal User With Standard User And Show Contact Of User
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Tejashree" into field "{testData:CcField}" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName            |
      | Tejashree Tejashree |
      | Tejashree Damdhar   |

  @161867 @ValidateUserSendEmailWithMultipleEmailAddressesAreSeparatedBySemicolon
  Scenario: Validate User Send Email With Multiple Email Addresses Are Separated By Semicolon
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in;ashutosh.thakur@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Testing Email" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I see the following messages in the page details :
      | Email Sent Successfully. |

  @161872 @ValidateUserRplyToAnEmailFromCollabTabSendEmailSubjectLineStartWithRe
  Scenario: Validate User Rply To An Email From Collab Tab Send Email Subject Line Start With Re
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Testing Email" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Testing Email" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "Testing Email" inside table
    When I click on "Send" button in send email modal
    Then I softly see "RE: Testing Email" as "Subject" on send email modal

  @161998  @verifyForThePlanningPhaseInMyFeedSectionToThisProgramIsDispalyOnCollabTab   @abhishekS
  Scenario: Validate that in planning phase in my feed section text To this program is display
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    Then I softly see the text containing :
      | this record |
      | To          |



  @161871  @VerifyThatUserSendEmailWithMultipleEmailAddressesAreSeparatedBySpace    @abhishekS
  Scenario: To verify when user send email with multiple email addresses are separated by space
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I enter value "Test Automation Email1" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I softly see the following messages in the page details :
      | Email Sent Successfully. |

  @164064  @VerifyThatUserSendEmailWithMultipleEmailAddressesAreSeparatedBySemicolon    @abhishekS
  Scenario: To verify when user send email with multiple email addresses are separated by Semicolon for TO and cc
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I enter value "Test Automation Email1" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    Then I softly see the following messages in the page details :
      | Email Sent Successfully. |

  @164262 @ValidateUserSendEmailWithMultipleEmailAddressAreSeparatedByCommaTo&CcField @vaibhavC
  Scenario: Validate User Send Email With Multiple Email Address Are Separated By Comma To & Cc Field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in,ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in,ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Testing Email" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I see the following messages in the page details :
      | Email Sent Successfully. |

  @164271 @ValidateUserSendEmailWithMultipleEmailAddressAreSeparatedBySpaceTo&CcField @vaibhavC
  Scenario: Validate User Send Email With Multiple Email Address Are Separated By Space To & Cc Field
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Testing Email" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I see the following messages in the page details :
      | Email Sent Successfully. |

  @169493 @tejal
  Scenario: verify,User send the email from TO &CC field as 'External' and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Send Email" opens in overLay window
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation SPI" into field "{testData:ToField}" on send email modal
    When I select value "Automation SPI" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test for external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I click on "View" icon for "Test" inside table
    Then I see "test for external" as "Body Content" on send email modal

  @169491 @tejal @wip
  Scenario: verify User send the email from TO&CC  field as 'internal' and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Send Email" opens in overLay window
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I perform quick search for "Test" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Test" inside table
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com,dilip@yopmail.com" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "test" as "Body Content" on send email modal

  @169289 @tejal @wip
  Scenario: verify User send the email from TO field as 'Group' with multiple attachment & files  and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Send Email" opens in overLay window
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test group for attachment and files" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I upload attachment "actionsAtAttachment.png" in send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "DuplicateFile.txt" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com,dilip@yopmail.com" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Links to Additional Attachments " as "Body Content" on send email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "DuplicateFile.txt" as "Body Content" on send email modal
    Then I see "actionsAtEgrid.png" as "Body Content" on send email modal
    Then I see "test group for attachment and files" as "Body Content" on send email modal

  @169263 @tejal @wip
  Scenario: Verify User send the email from TO field as 'internal' with attachment  and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Send Email" opens in overLay window
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test for internal with attachment" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I perform quick search for "Test" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Test" inside table
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com,dilip@yopmail.com" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "test for internal with attachment" as "Body Content" on send email modal

  @169286 @tejal @wip
  Scenario: Verify User send the email from TO field as 'Group' with multiple attachment and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test group for attachment" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I upload attachment "actionsAtAttachment.png" in send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I perform quick search for "Test" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Test" inside table
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com,dilip@yopmail.com" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "test group for attachment" as "Body Content" on send email modal

  @169287 @tejal @wip
  Scenario: Verify User send the email from TO field as 'Group' with multiple files and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test group for files" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "DuplicateFile.txt" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com,dilip@yopmail.com" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Links to Additional Attachments " as "Body Content" on send email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "DuplicateFile.txt" as "Body Content" on send email modal
    Then I see "actionsAtEgrid.png" as "Body Content" on send email modal
    Then I see "test group for files" as "Body Content" on send email modal

  @169527 @tejal
  Scenario: Verify User send the email from TO&CC field as 'Group' with multiple files and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group for Admin" into field "{testData:CcField}" on send email modal
    When I select value "group for Admin" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test group for files" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "DuplicateFile.txt" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    When I close "Send Email" modal by clicking on x top right button
    And I pause execution for "5" seconds
    And I click on "View" icon for "Test" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "DuplicateFile.txt" as "Body Content" on send email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "test group for files" as "Body Content" on send email modal

  @169529 @tejal
  Scenario: Verify User send the email from TO&  CC field as 'Group' with multiple attachment & files  and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group for Admin" into field "{testData:CcField}" on send email modal
    When I select value "group for Admin" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test group for attachment and files" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I upload attachment "actionsAtAttachment.png" in send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "5" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "DuplicateFile.txt" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    And I click on "View" icon for "Test" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "DuplicateFile.txt" as "Body Content" on send email modal
    Then I see "actionsAtEgrid.png" as "Body Content" on send email modal
    Then I see "test group for attachment and files" as "Body Content" on send email modal
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal
    Then I see attachment "captureModalFields.png" is present in send email modal
    Then I see attachment "actionsAtEgrid.png" is present in send email modal

  @169266 @tejal @wip
  Scenario: Verify User send the email from TO& CC field as 'internal' with attachment & files and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
#    When I navigate to "Files" sub tab
#    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
#    When I upload file "SendEmailAttachment.pdf" into library with sharing
#    When I select Classification as "Medical Reports" at upload file modal
#    When I click on "Upload" button in send email modal
#    And I pause execution for "3" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test for files & attachment" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com,dilip@yopmail.com" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Links to Additional Attachments " as "Body Content" on send email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "test for files & attachment" as "Body Content" on send email modal

  @169265 @tejal @wip
  Scenario: Verify user send the email from TO field as 'internal' with files and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
#    When I navigate to "Files" sub tab
#    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
#    When I upload file "SendEmailAttachment.pdf" into library with sharing
#    When I select Classification as "Medical Reports" at upload file modal
#    When I click on "Upload" button in send email modal
#    And I pause execution for "3" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test" into field "Subject" on send email modal
    When I enter value "test for internal with file" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com,dilip@yopmail.com" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Links to Additional Attachments " as "Body Content" on send email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "test for internal with file" as "Body Content" on send email modal

  @169688 @jyoti
  Scenario:Send Email-To verify,User reply email previously send from TO field as 'internal' and click on  reply View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "test for reply" into field "Subject" on send email modal
    When I enter value "test for reply with internal" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "test for reply" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "View" icon for "RE: test for reply" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "10" seconds
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "test for reply" as "Body Content" on send email modal

  @169690 @jyoti
  Scenario: Send Email-To verify,User reply email previously send from TO field as 'External' and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "reply for external" into field "Subject" on send email modal
    When I enter value "test reply for external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    And I click on "View" icon for "RE: reply for external" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "Subject" as "Body Content" on send email modal

  @169693 @jyoti @complete @wip
  Scenario: Send Email-To verify,User reply email previously send from TO field as 'Group' and click on  reply View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "reply group" into field "Subject" on send email modal
    When I enter value "reply group" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply group" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "View" icon for "RE: reply group" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com, Nauman Shahid" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Transportation |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal

  @169696 @jyoti
  Scenario: Send Email-To verify,To verify,User reply email previously send from TO field as 'internal&external' and click on reply View action on that reply mai then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Dilip DM" into field "{testData:ToField}" on send email modal
    When I select value "Dilip DM" with iconName "fa fa-phone" into field on send email modal
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Automation PM1" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM1" with iconName "fa fa-user" into field on send email modal
    When I enter value "reply internal &external" into field "Subject" on send email modal
    When I enter value "reply internal &external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply internal &external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "View" icon for "RE: reply internal &external" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "reply internal &external" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "automationpm1@yopmail.com" as "Body Content" on send email modal

  @169931 @jyoti @wip
  Scenario: Send Email-To verify,User reply with file the email from TO &CC field as 'internal&external' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName         | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active         | false             | ApiGeneratedId:0 |
      | Page Tabs Config      | Highlights Panel? | false             | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName         | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active         | true          | Grantee State Program | Name                      | TAB-026                    |
      | Page Tabs Config:Page Layout Action | Highlights Panel? | true          | Grantee State Program | Name                      | TAB-409                    |
    Given I have "customMetaData" configuration as below:
      | id                 | label        | booleanValue | customMetaDataApiName    |
      | m036O000000fxpeQAA | SendEmaiBody | false        | GNT__KeyValueHolder__mdt |
    And I update custom metadata setting changes:
      | id                 | label        | booleanValue | customMetaDataApiName    |
      | m036O000000fxpeQAA | SendEmaiBody | true         | GNT__KeyValueHolder__mdt |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save and Close Modal" in the page details
    And I save the field labeled "ID" as "id"
    When I navigate to "Attachments" sub tab
    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
    When I upload file "TestAutomationFile.csv" into library with sharing
    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
    When I select Classification as "Medical Reports" at upload file modal
    When I click on "Upload" button in send email modal
    When I pause execution for "5" seconds
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Surya Namasivayam" into field "{testData:ToField}" on send email modal
    When I select value "Surya Namasivayam" with iconName "fa fa-phone" into field on send email modal
    When I enter value "Jason FD" into field "{testData:ToField}" on send email modal
    When I select value "Jason FD" with iconName "fa fa-user" into field on send email modal
    When I enter value "Rawimas GGPTEST5" into field "{testData:ToField}" on send email modal
    When I select value "Rawimas GGPTEST5" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Surya Namasivayam" into field "{testData:CcField}" on send email modal
    When I select value "Surya Namasivayam" with iconName "fa fa-phone" into field on send email modal
    When I enter value "Jason FD" into field "{testData:CcField}" on send email modal
    When I select value "Jason FD" with iconName "fa fa-user" into field on send email modal
    When I enter value "Rawimas GGPTEST5" into field "{testData:CcField}" on send email modal
    When I select value "Rawimas GGPTEST5" with iconName "fa fa-user" into field on send email modal
    When I enter value "reply TO& CC with internal & external" into field "Subject" on send email modal
    When I enter value "reply TO& CC with internal & external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "reply TO& CC with internal & external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    When I check "TestAutomationFile.csv" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com, Nauman Shahid" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal

  @169703 @tejal @wip
  Scenario: Verify user reply email previously send from TO field as 'internal' with files and click on  reply View action on that reply mailthen added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "test reply" into field "Subject" on send email modal
    When I enter value "test reply" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    And I refresh the page
    When I click on "Reply" icon for "test reply" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I click on "View" icon for "RE: test reply" inside table
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com, Nauman Shahid" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Links to Additional Attachments " as "Body Content" on send email modal
    Then I see text as "TestAutomationFile.csv" on View modal
    Then I see text as "(Please find below links to additional attachments other than those attached to this email. Click the filename to view the attachment.):" on reply email modal
    Then I see "TestAutomationFile.csv" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see text as "From: ashwini.mahore@yopmail.com" on reply email modal
    Then I see text as "Sent:" on reply email modal
    Then I see text as "To: snehal.mulange@reisystems.in" on reply email modal
    Then I see text as "Subject: test reply" on reply email modal
    Then I see "test reply" as "Body Content" on send email modal

  @169931 @jyoti @wip
  Scenario: Send Email-To verify,User reply with file the email from TO &CC field as 'internal&external' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
#    When I navigate to "Files" sub tab
#    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
#    When I upload file "SendEmailAttachment.pdf" into library with sharing
#    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
#    When I select Classification as "Medical Reports" at upload file modal
#    When I click on "Upload" button in send email modal
#    When I pause execution for "5" seconds
#    And I refresh the page
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "tejashree.damdhar@reisystems.in;tejashree.deshpandea@reisystems.in;automationpm1@yopmail.com" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "tejashree.damdhar@reisystems.in;tejashree.deshpandea@reisystems.in;automationpm1@yopmail.com" into field "{testData:CcField}" on send email modal
    When I enter value "reply TO& CC with internal & external" into field "Subject" on send email modal
    When I enter value "reply TO& CC with internal & external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "reply TO& CC with internal & external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "70" seconds
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To: tejashree.damdhar@reisystems.in;tejashree.deshpandea@reisystems.in;automationpm1@yopmail.com" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see "reply TO& CC with internal & external" as "Body Content" on send email modal

  @169930 @jyoti
  Scenario:Send Email-To verify,User reply with attachment the email from TO &CC field as 'internal&external' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
#    When I navigate to "Files" sub tab
#    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
#    When I upload file "SendEmailAttachment.pdf" into library with sharing
#    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
#    When I select Classification as "Medical Reports" at upload file modal
#    When I click on "Upload" button in send email modal
#    When I pause execution for "5" seconds
#    And I refresh the page
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "DILIP" into field "{testData:ToField}" on send email modal
    When I select value "DILIP Hatagale" with iconName "fa fa-user" into field on send email modal
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM1" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "DILIP" into field "{testData:CcField}" on send email modal
    When I select value "DILIP Hatagale" with iconName "fa fa-user" into field on send email modal
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM1" with iconName "fa fa-user" into field on send email modal
    When I enter value "reply TO& CC with internal & external" into field "Subject" on send email modal
    When I enter value "reply TO& CC with internal & external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "reply TO& CC with internal & external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    When I perform quick search for "RE: reply TO& CC with internal & external" in "---program:-:communicationHistoryTableId---" panel
    And I click on "View" icon for "RE: reply TO& CC with internal & external" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "60" seconds
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see text as "reply TO& CC with internal & external" in reply email modal
#    Then I see "reply TO& CC with internal & external" as "Body Content" on send email modal

  @169929 @jyoti
  Scenario: Send Email-To verify,User reply the email from TO &CC field as 'internal&external' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "test1@reisystem.in;test2@reisystem.in;test3@reisystem.in" into field "{testData:ToField}" on send email modal
    When I enter value "reply TO& CC with internal & external" into field "Subject" on send email modal
    When I enter value "reply TO& CC with internal & external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "reply TO& CC with internal & external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "test1@reisystem.in;test2@reisystem.in;test3@reisystem.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "View" icon for "RE: reply TO& CC with internal & external" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From: automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To: test1@reisystem.in;test2@reisystem.in;test3@reisystem.in" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal

  @169876 @jyoti
  Scenario:Send Email-To verify,User reply the email with files& attachment  from TO&CC field as 'Group' and click on View action on that reply  mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
#    When I navigate to "Files" sub tab
#    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
#    When I upload file "SendEmailAttachment.pdf" into library with sharing
#    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
#    When I select Classification as "Medical Reports" at upload file modal
#    When I click on "Upload" button in send email modal
#    When I pause execution for "5" seconds
#    And I refresh the page
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group for Admin" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group test for Automation" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply for  To & cc group" into field "Subject" on send email modal
    When I enter value "reply for  To & cc group" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "reply for  To & cc group" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "View" icon for "RE: reply for To & cc group" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From: automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To: automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "Please find below links to additional attachments other than those attached to this email. Click the filename to view the attachment" as "Body Content" on send email modal

  @169875 @jyoti
  Scenario:Send Email-To verify,User reply the email with files  from TO  & CC field as 'Group' and click on View action on that reply  mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group for Admin" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group test for Automation" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply for To & cc group" into field "Subject" on send email modal
    When I enter value "reply for To & cc group" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "reply for To & cc group" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    And I click on "View" icon for "RE: reply for To & cc group" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see "automationadmin@yopmail.com" as "Body Content" on send email modal

  @169873 @jyoti
  Scenario: Send Email-To verify,User reply the email from TO  & CC field as 'Group' and click on View action on that reply  mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group for Admin" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group test for Automation" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply for  To & cc group 2" into field "Subject" on send email modal
    When I enter value "reply for  To & cc group 2" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "reply for  To & cc group 2" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    And I click on "View" icon for "RE: reply for  To & cc group 2" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see "automationadmin@yopmail.com" as "Body Content" on send email modal

  @169833 @jyoti
  Scenario: Send Email-To verify,User reply the email with attachment  from TO &CC field as 'External' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "test1@reisystem.in;test2@reisystem.in;test3@reisystem.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Dilip DM" into field "{testData:CcField}" on send email modal
    When I select value "Dilip DM" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    And I click on "View" icon for "RE: reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "test1@reisystem.in;test2@reisystem.in;test3@reisystem.in" as "Body Content" on send email modal

  @169835 @jyoti
  Scenario:Send Email-To verify,User reply the email with files from TO &CC field as 'External' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "test1@reisystem.in;test2@reisystem.in;test3@reisystem.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Dilip DM" into field "{testData:CcField}" on send email modal
    When I select value "Dilip DM" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    When I check "TC Collab.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    And I click on "View" icon for "RE: reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "test1@reisystem.in;test2@reisystem.in;test3@reisystem.in" as "Body Content" on send email modal

  @169844 @jyoti
  Scenario: Send Email-To verify,User reply the email with files & attachment from TO &CC field as 'External' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Dilip DM" into field "{testData:CcField}" on send email modal
    When I select value "Dilip DM" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    And I click modal button "Select Files"
    When I check "TC Collab.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    And I pause execution for "10" seconds
    When I close "Reply" modal by clicking on x top right button
    And I pause execution for "5" seconds
    And I click on "View" icon for "RE: reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal

  @169874 @jyoti
  Scenario: Send Email-To verify,User reply the email with attachment  from TO  & CC field as 'Group' and click on View action on that reply  mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group for Admin" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group test for Automation" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply for To & cc group" into field "Subject" on send email modal
    When I enter value "reply for To & cc group" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for To & cc group" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    And I pause execution for "10" seconds
    When I close "Reply" modal by clicking on x top right button
    And I pause execution for "5" seconds
    And I click on "View" icon for "RE: reply for To & cc group" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
   # Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal

  @169699 @tejal
  Scenario: Verify user reply email  previously send from  TO field as 'internal' with attachment  and click on  reply View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "10" seconds
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "test" into field "Subject" on send email modal
    When I enter value "test for reply with attachment" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I click on "Reply" icon for "test" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I click on "View" icon for "RE: test" inside table
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see "test" as "Body Content" on send email modal
    Then I see "test for reply with attachment" as "Body Content" on send email modal

  @160296 @jyoti
  Scenario: Send Email-To verify,  For Reply action show only Contacts from 'Cc' field whose Account Record Type Name is not Internal, No user records will be shown for external
#    Given I have "default" configuration as below:
#      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
#      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
#    Given I setup test configuration as below:
#      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
#      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                    |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Dilip" into field "{testData:ToField}" on send email modal
    When I select value "Dilip DM" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160284 @jyoti
  Scenario: Send Email-To Verify,When For Reply action User select 'Internal'  from Cc field only users records should be visible not a contact record.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "DILIP" into field "{testData:ToField}" on send email modal
    When I select value "DILIP Hatagale" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "DILIP" into field "{testData:CcField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160261 @jyoti
  Scenario: Send EMail-To Verify If user select the group from 'Cc' field  then  email get received to all group members Internal & External.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group for Admin" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:CcField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160256 @jyoti
  Scenario: Send Email-To Verify, When user select Internal/External From 'Cc' field only internal users display and External Contacts display.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:CcField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @169810 @tejal
  Scenario: Verify User reply email from TO field as 'Group' with multiple attachment & files  and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply group with attachment & files" into field "Subject" on send email modal
    When I enter value "reply group with attachment & files" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I upload attachment "actionsAtAttachment.png" in send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "5" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "DuplicateFile.txt" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I refresh the page
    When I click on "Reply" icon for "reply group with attachment & files" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I upload attachment "actionsAtAttachment.png" in send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "5" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "DuplicateFile.txt" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    When I click on "View" icon for "RE: reply group with attachment & files" inside table
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "DuplicateFile.txt" as "Body Content" on send email modal
    Then I see "actionsAtEgrid.png" as "Body Content" on send email modal

  @169700 @tejal
  Scenario: Verify user reply email with attachment to previously send from  TO field as 'internal' with attachment  and click on  reply View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "dilip.hatagale@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "test for reply with attachment" into field "Subject" on send email modal
    When I enter value "test for reply with attachment" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    And I close modal by clicking the top right x button
    When I click on "Reply" icon for "test for reply with attachment" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "actionsAtAttachment.png" in send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I click on "View" icon for "RE: test for reply with attachment" inside table
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent: " as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "dilip.hatagale@reisystems.in" as "Body Content" on send email modal
    Then I see "test for reply with attachment" as "Body Content" on send email modal
    Then I see "Name" as "Attachments" on send email modal
    Then I see "Action" as "Attachments" on send email modal

  @169703 @tejal
  Scenario: Verify user reply email previously send from TO field as 'internal' with files and click on  reply View action on that reply mailthen added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "dilip.hatagale@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "test reply" into field "Subject" on send email modal
    When I enter value "test reply" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    And I refresh the page
    When I click on "Reply" icon for "test reply" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I close modal by clicking the top right x button
    When I click on "View" icon for "RE: test reply" inside table
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "dilip.hatagale@reisystems.in" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see "test reply" as "Body Content" on send email modal
    Then I see text as "Please find below links to additional attachments other than those attached to this email. Click the filename to view the attachment" in reply email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal

  @169710 @tejal
  Scenario: Verify reply email with attachment & files that previously send from TO& CC field as 'internal' with attachment & files and click on reply View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "dilip.hatagale@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "test reply" into field "Subject" on send email modal
    When I enter value "test reply" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "5" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I refresh the page
    When I click on "Reply" icon for "test reply" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "5" seconds
    When I check "TC Collab.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I refresh the page
    When I click on "View" icon for "RE: test reply" inside table
    Then I see "TC Collab.png" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From: automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To: dilip.hatagale@reisystems.in" as "Body Content" on send email modal
    Then I see "Name" as "Attachments" on send email modal
    Then I see "Action" as "Attachments" on send email modal
    Then I see "SendEmailAttachment.pdf" as "Attachments" on send email modal
    Then I see the text containing :
      | Attachments |


  @160556 @jyoti
  Scenario: Send Email: To Verify, For Reply action when user not select Internal, External or Group from 'To' field, user records & contact records should not be visible.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "Shambhavi" into field "{testData:ToField}" on send email modal
    Then I softly do not see user suggestion box displayed at send email modal

  @160489 @jyoti
  Scenario: Send Email: To Verify, When user not select Internal, External or Group From 'To' field then user record and  contact record should not be visible.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "Shambhavi" into field "{testData:ToField}" on send email modal
    Then I softly do not see user suggestion box displayed at send email modal

  @159970 @jyoti
  Scenario: Send Email-To verify , When user select Active Internal user & Active External user from 'To' field then for Internal user record  & for External  contact should be visible.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation Admin" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation Admin" into field "{testData:CcField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160198 @jyoti
  Scenario: Send Mail-To Verify, for Reply action When user select the group From 'TO' field email get received to all group members(Internal/External)
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I enter value "test" into field "Subject" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160141 @jyoti
  Scenario: Send Email- To Verify, when user select the group  from 'To' field then  email get received to all group members Internal & External.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160313 @jyoti
  Scenario: Send Email- To Verify, For Relpy  action When user select the group from 'Cc' field  the email get received to all group members as a External & Internal.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "test grop 1" into field "{testData:CcField}" on send email modal
    When I enter value "test" into field "Subject" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160300 @jyoti
  Scenario: Send Email-To Verify, For Reply action select the both Internal/External from 'Cc' field only Internal users display and External Contacts display.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Neelima GGPTEST5" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @159887 @jyoti
  Scenario: Send Email-To Verify,When User select 'Internal' from 'TO' field only users records should be visible.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160468 @jyoti
  Scenario: Send Email- To Verify,For Reply action  When user select Internal/External from 'To' field Only internal user and external contact should be visible
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @159937 @jyoti
  Scenario: Send Email-To Verify, When user select external from  'To'  field whose Account Record Type Name is not Internal then only contact should be display  user records should not be visible
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "dilip" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160226 @jyoti
  Scenario:  Send EMail-To Verify,  when user select External from 'Cc'  field then show only Contacts whose Account Record Type Name is not Internal  No user records will be shown.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    And I wait for "2" seconds
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160207 @jyoti
  Scenario: Send Email-To Verify,When User select 'Internal' from 'CC' field only users records should be visible & contact record should not be display
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation EXE" into field "{testData:ToField}" on send email modal
    When I select value "Automation EXE" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160177 @jyoti
  Scenario: Send Mail-To Verify, for Reply action  when user select the external from 'To' field then show only contact whose record type is not internal and also user records should not shown
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @160159 @jyoti
  Scenario: Send Email To Verify, For Reply action when user select the internal from 'To' field then It will show only Active Internal Users no contact record should be visible.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    Then I softly see user suggestion box displayed at send email modal

  @169708 @tejal
  Scenario: Verify Send Email-User reply email previously send from TO& CC field as 'internal' with attachment & files and click on View action on that mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "test reply 2" into field "Subject" on send email modal
    When I enter value "test reply 2" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    And I refresh the page
    When I click on "Reply" icon for "test reply 2" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I pause execution for "2" seconds
    When I click on "View" icon for "RE: test reply 2" inside table
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From: automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "Subject: test reply 2" as "Body Content" on send email modal
    Then I see "Links to Additional Attachments" as "Body Content" on send email modal
    Then I see text as "Please find below links to additional attachments other than those attached to this email. Click the filename to view the attachment" in reply email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see the text containing :
      | Attachments |

  @169825 @tejal
  Scenario: Verify user reply the email with files&attachment  from TO&CC  field as 'internal' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "reply TO& CC internal" into field "Subject" on send email modal
    When I enter value "reply TO& CC internal" into field "Body Content" on send email modal
    When I upload attachment "TC Collab.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "5" seconds
    When I check "TC Collab.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    And I refresh the page
    When I click on "Reply" icon for "reply TO& CC internal" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I pause execution for "2" seconds
    When I click on "View" icon for "RE: reply TO& CC internal" inside table
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From: automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To: snehal.mulange@reisystems.in" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see text as "Please find below links to additional attachments other than those attached to this email. Click the filename to view the attachment" in reply email modal
    Then I see text as "Links to Additional Attachments" on reply email modal
    Then I see "TC Collab.png" as "Body Content" on send email modal

  @169832 @tejal
  Scenario: Verify user reply the email from TO &CC field as 'External' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    And I pause execution for "3" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "reply for to &cc external 2" into field "Subject" on send email modal
    When I enter value "reply for to &cc external 2" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I pause execution for "2" seconds
    When I click on "Reply" icon for "reply for to &cc external 2" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    And I pause execution for "2" seconds
    When I close "Reply" modal by clicking on x top right button
    When I click on "View" icon for "RE: reply for to &cc external 2" inside table
    Then I see "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" as "Body Content" on send email modal
    Then I see text as "reply for to &cc external 2" in reply email modal

  @169813 @tejal
  Scenario: Verify user reply email with attachment& files from TO field as 'Group' with multiple attachment & files  and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply group with attachment & files" into field "Subject" on send email modal
    When I enter value "reply group with attachment & files" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I upload attachment "actionsAtAttachment.png" in send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "5" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "DuplicateFile.txt" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I refresh the page
    When I click on "Reply" icon for "reply group with attachment & files" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I upload attachment "actionsAtAttachment.png" in send email modal
    When I upload attachment "actionsAtEgrid.png" in send email modal
    And I click modal button "Select Files"
    And I pause execution for "5" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "DuplicateFile.txt" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I check "actionsAtEgrid.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    When I click on "View" icon for "RE: reply group with attachment & files" inside table
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see text as "Please find below links to additional attachments other than those attached to this email. Click the filename to view the attachment" in reply email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal
    Then I see "DuplicateFile.txt" as "Body Content" on send email modal
    Then I see "actionsAtEgrid.png" as "Body Content" on send email modal

  @168932 @SendEmail-Toverify,UserreplytheemailwithattachmentfromTO&CCfieldExternalandclickonViewactiononthatreplymailthenaddedfieldsEmailBodystructureareseeninthemailbody @jyoti @wip
  Scenario: Send Email-To verify,User reply the email with attachment  from TO &CC field as 'External' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    And I pause execution for "10" seconds
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    And I click on "View" icon for "RE: reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "Sender:" as "Body Content" on send email modal
    Then I see "ashwini.mahore@yopmail.com,dilip@yopmail.com" as "Body Content" on send email modal
    Then I see "Sender Organization:" as "Body Content" on send email modal
    Then I see the text containing :
      | Department of Community Health |
    Then I see "Internal Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "Recipient Link to the record:" as "Body Content" on send email modal
    Then I see "{SavedValue:id}" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see text as "From: ashwini.mahore@yopmail.com" on reply email modal
    Then I see text as "Sent:" on reply email modal
    Then I see text as "To: surya.namasivayam@reisystems.com" on reply email modal
    Then I see text as "Subject: reply for to &cc external" on reply email modal
    Then I see "reply for to &cc external" as "Body Content" on send email modal

  @169843 @wip
  Scenario: Send Email-To verify,User reply the email with files & attachment from TO &CC field as 'External' and click on View action on that reply mail then added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Dilip DM" into field "{testData:CcField}" on send email modal
    When I select value "Dilip DM" with iconName "fa fa-phone" into field on send email modal
    When I enter value "reply for to &cc external" into field "Subject" on send email modal
    When I enter value "reply for to &cc external" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "reply for to &cc external" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    When I close "Reply" modal by clicking on x top right button
    Then I see "Body Content" as "Body Content" on send email modal
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "From:" as "Body Content" on send email modal
    Then I see "To:" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "automationpm@yopmail.com" as "Body Content" on send email modal
    Then I see "Subject:" as "Body Content" on send email modal
    Then I see attachment "captureModalFields.png" is present in send email modal

  @168973 @jyoti
  Scenario: Send email -To verify,When User click on  reply icon on Collab emails table, then  reply back content is aligned properly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "test" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "test" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "60" seconds
    Then I validate that following reply back content is aligned properly:
      | -----Original Message-----        |
      | From: automationadmin@yopmail.com |
      | Sent:                             |
      | To: snehal.mulange@reisystems.in  |
      | Subject: test                     |

  @168974 @jyoti
  Scenario: Send email -To verify,When User click on  reply icon when attachment is attached for the mail , then  reply back content is aligned properly
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "test" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "test" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I validate that following reply back content is aligned properly:
      | -----Original Message-----       |
      | From: ashwini.mahore@yopmail.com |
      | Sent:                            |
      | To: snehal.mulange@reisystems.in |
      | Subject: test                    |

  @168976 @jyoti
  Scenario:Send email -To verify,When User click on  reply icon when file  is attached for the mail , then  reply back content is aligned properly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "test" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I pause execution for "5" seconds
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I refresh the page
    And I click on "Reply" icon for "test" inside flex table with id "---program:-:communicationHistoryTableId---"
    Then I validate that following reply back content is aligned properly:
      | -----Original Message-----       |
      | From: ashwini.mahore@yopmail.com |
      | Sent:                            |
      | To: snehal.mulange@reisystems.in |
      | Subject: test                    |

  @168977 @jyoti
  Scenario: Send email -To verify,When User click on  reply icon when enternal is selected  for the mail , then reply back content is aligned properly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "test test" into field "{testData:ToField}" on send email modal
    When I select value "test test" with iconName "fa fa-phone" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "test test" into field "{testData:CcField}" on send email modal
    When I select value "test test" with iconName "fa fa-phone" into field on send email modal
    When I enter value "test" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "test" inside flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "60" seconds
    Then I validate that following reply back content is aligned properly:
      | -----Original Message-----        |
      | From: automationadmin@yopmail.com |
      | Sent:                             |
      | To: testcontact@yopmail.com       |
      | Subject: test                     |


  @173457 @tejal
  Scenario: Verify user should see the Required field symbol ( * ) for TO field  at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    Then I see asterisk mark at "{testData:ToField}" field is displayed at send email modal

  @181340 @sprint23
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO  (External)  field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
#    When I navigate to "Files" sub tab
#    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
#    When I upload file "SendEmailAttachment.pdf" into library with sharing
#    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
#    When I select Classification as "Medical Reports" at upload file modal
#    When I click on "Upload" button in send email modal
#    When I pause execution for "5" seconds
#    And I refresh the page
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Attachment  from to  (External)" into field "Subject" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181347 @sprint23 @needtoaddattachment
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO &  CC (Group)   field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "Attachment  from TO &  CC (Group)" into field "Subject" on send email modal
    When I enter value "test for internal with file" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181342 @sprint23 @jyoti
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO (group )  field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "test" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "7" seconds
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181343 @sprint23
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO & CC (External) field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Files" sub tab
#    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
#    When I upload file "SendEmailAttachment.pdf" into library with sharing
#    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
#    When I select Classification as "Medical Reports" at upload file modal
#    When I click on "Upload" button in send email modal
#    When I pause execution for "5" seconds
#    And I refresh the page
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "jyoti.dede@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Attachment  from to  (External)" into field "Subject" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181339 @sprint23
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO (internal) field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
#    When I navigate to "Files" sub tab
#    When I click on top right button "Add Files" in flex table with id "---program:-:PlanningFilesFlexGridId---"
#    When I upload file "SendEmailAttachment.pdf" into library with sharing
#    When I enter value as "test Automation upload from files list" in field "Description" at Library Files
#    When I select Classification as "Medical Reports" at upload file modal
#    When I click on "Upload" button in send email modal
#    When I pause execution for "5" seconds
#    And I refresh the page
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Attachment  from to  (External)" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181344 @sprint23
  Scenario: Send Email -To verify , When user reply  an Email with an Attachment  from TO  (External)  field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Attachment  from to  (External)" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "Attachment  from to  (External)" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181345 @sprint23
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO &  CC (External)   field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "jyoti.dede@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Attachment  from to  (External)" into field "Subject" on send email modal
    And I pause execution for "5" seconds
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "Attachment  from to  (External)" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181346 @sprint23
  Scenario: Send Email -To verify , When user reply  an Email with an Attachment  from TO (group )  field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "grou" into field "{testData:ToField}" on send email modal
    When I select value "group for PM user" with iconName "fa fa-users" into field on send email modal
    When I enter value "Attachment  from TO (group )" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "Attachment  from TO (group )" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181376 @sprint23
  Scenario: Send Email -To verify , When user reply  an Email with an Attachment  from TO (internal) field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Attachment from to (Internal)" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I click on "Reply" icon for "Attachment from to (Internal)" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "Reply test Attachment from to Internal" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "7" seconds
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @183895 @sprint23
  Scenario: Send Email -To verify , When user sends an Email with an multiple Attachment  from TO & CC  (internal &External) field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
#    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "multiple Attachment  from TO (internal &External)" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @183842 @sprint23
  Scenario: Send Email -To verify , When user sends an Email with an multiple Attachment  from TO (internal &External) field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "multiple Attachment  from TO (internal &External)" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @183830 @sprint23
  Scenario: Send Email -To verify , When user reply an Email with an multiple Attachment  from TO (internal) field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "send email select file attachment" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "multiple Attachment from TO (internal &External)" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I click on "Reply" icon for "multiple Attachment from TO (internal &External)" inside table
    When I enter value "reply test" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    And I refresh the page
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @181341 @dnyaneshwari @sprint23
  Scenario: Send Email -To verify , When user sends an Email with an Attachment  from TO &  CC (Internal)   field that attachment is dispalyed in the column on the messages page block
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "test" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186124 @sprint24 @dnyaneshwari
  Scenario:Send Email -To verify , User should be able to "true" when select file is attached to "TO- External " email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "send email select file attachment" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    And I pause execution for "5" seconds
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186685 @sprint24 @dnyaneshwari
  Scenario: Send Email -To verify , User should be able to see "false" when select file is does not attached to "TO- group" reply email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "send email select file attachment" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I click on "Reply" icon for "send email select file attachment" inside table
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186684 @sprint24 @dnyaneshwari
  Scenario: Send Email -To verify , User should be able to see "false" when select file is does not attached to "TO- internal" reply email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "send email select file attachment" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I click on "Reply" icon for "send email select file attachment" inside table
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    And I refresh the page
    When I perform quick search for "RE: send email select file attachment" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186681 @sprint24 @dnyaneshwari
  Scenario: Send Email -To verify , User should be able to see "false" when select file is does not attached to "TO-external" reply email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "send email select file attachment" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I click on "Reply" icon for "send email select file attachment" inside table
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186677 @sprint24 @dnyaneshwari
  Scenario:Send Email -To verify , User should be able to see "true" mark when select file is attached to "TO- internal " reply email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "send email select file attachment" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I click on "Reply" icon for "send email select file attachment	" inside table
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true " for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186678 @sprint24 @dnyaneshwari
  Scenario:Send Email -To verify , User should be able to see "true" when select file is attached to "TO- external " reply email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "send email select file attachment" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "send email select file attachment" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "send email select file attachment" inside table
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186294 @sprint24 @dnyaneshwari
  Scenario:Send Email -To verify , User should be able to see "true" when select file is attached to "TO & CC- Internal " email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Testing Email" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186295 @sprint24 @dnyaneshwari
  Scenario:Send Email -To verify , User should be able to see "true" when select file is attached to "TO & CC- External " email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Testing Email" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186297 @sprint24 @dnyaneshwari
  Scenario:Send Email -To verify , User should be able to see "false" when user did not select any attached to "TO- Internal " email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Testing Email" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186298 @sprint24 @dnyaneshwari
  Scenario:Send Email -To verify , User should be able to see "false" when user did not select any attached to "TO- External " email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Testing Email" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186300 @sprint24 @dnyaneshwari
  Scenario:Send Email -To verify , User should be able to see "false" when user did not select any attached to "TO- Group " email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "send email select file attachment" into field "Subject" on send email modal
    When I enter value "test" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I pause execution for "5" seconds
    And I refresh the page
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186296 @sprint24 @dnyaneshwari
  Scenario:Send Email -To verify , User should be able to see "true" when select file is attached to "TO & CC- group   " email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply for  To group" into field "Subject" on send email modal
    When I enter value "reply for  To group" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @186679 @sprint24 @dnyaneshwari
  Scenario:Send Email -To verify , User should be able to see "true" when select file is attached to "TO- group " reply email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply for  To group" into field "Subject" on send email modal
    When I enter value "reply for  To group" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @187614 @sprint24 @dnyaneshwari
  Scenario:Send Email -To verify , User should be able to see "true" mark when select file is attached to "TO & CC- internal " reply  email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:CcField}" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "reply for  To group" into field "Subject" on send email modal
    When I enter value "reply for  To group" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @187627 @sprint26 @dnyaneshwari
  Scenario:Send Email -To verify , User should be able to see "true" mark when select file is attached to "TO & CC- group " reply  email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I pause execution for "5" seconds
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group 1" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply for  To group" into field "Subject" on send email modal
    When I enter value "reply for  To group" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @187630 @sprint26 @dnyaneshwari
  Scenario:Send Email -To verify , User should be able to see "true" mark when select file is attached to "TO & CC- external " reply  email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test able to see true" into field "Subject" on send email modal
    When I enter value "Test able to see true" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "Test able to see true" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I upload attachment "captureModalFields.png" in send email modal
    When I click on "Send" button in send email modal
    When I close "Reply" modal by clicking on x top right button
    Then I softly see value "true" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @187635 @sprint26 @dnyaneshwari
  Scenario:Send Email -To verify , User should be able to see "false" mark when select file is attached to "TO & CC- internal " reply  email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test able to see false" into field "Subject" on send email modal
    When I enter value "Test able to see false" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I perform quick search for "Test able to see false" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test able to see false" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test able to see false" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @195079 @ToverifyUsershouldnotbeabletosee"Uploadfilemodal"whentheusercheck"Group"inthecheckbox&typeanytextin"TO"fieldandpressenter @jyoti @userstory_174060
  Scenario:To verify , User should not be able to see "Upload file modal" when the user check "Group" in the checkbox & type any text in "TO" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "Automation Testing Group" into field "{testData:CcField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @195078 @ToverifyUsershouldnotbeabletosee"Uploadfilemodal"whentheusercheck"External"inthecheckbox&typeanytextin"TO"fieldandpressenter @userstory_174060 @jyoti
  Scenario: To verify , User should not be able to see "Upload file modal" when the user check "External" in the checkbox & type any text in "TO" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "ExternalP User 1" into field "{testData:ToField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @195077 @ToverifyUsershouldnotbeabletosee"Uploadfilemodal"whentheusercheck"Internal"inthecheckbox&typeanytextin"TO"fieldandpressenter @userstory_174060 @jyoti
  Scenario: To verify , User should not be able to see "Upload file modal" when the user check "Internal" in the checkbox & type any text in "TO" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "{testData:ToField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @195081 @ToverifyUsershouldnotbeabletosee"Uploadfilemodal"whentheusercheck"Internal"inthecheckbox&typeanytextin"TO"&CC"fieldandpressenter @userstory_174060 @jyoti
  Scenario: To verify , User should not be able to see "Upload file modal" when the user check "Internal" in the checkbox & type any text in "TO" & "CC" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "ExternalP User 1" into field "{testData:ToField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @195082 @ToverifyUsershouldnotbeabletosee"Uploadfilemodal"whentheusercheck"External"inthecheckbox&typeanytextin"TO"&"CC"fieldandpressenter @userstory_174060 @jyoti
  Scenario: To verify , User should not be able to see "Upload file modal" when the user check "External" in the checkbox & type any text in "TO" & "CC" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "Rawimas GGPTEST5" into field "{testData:CcField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @195083 @Toverify,Usershouldnotbeabletosee"Uploadfilemodal"whentheusercheck"Group"inthecheckbox&typeanytextin"TO"&"CC"fieldandpressenter @userstory_174060 @jyoti
  Scenario: To verify , User should not be able to see "Upload file modal" when the user check "Group" in the checkbox & type any text in "TO" & "CC" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "Automation Testing Group" into field "{testData:CcField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @187636 @sprint26 @dnyaneshwari
  Scenario:Send Email -To verify , User should be able to see "false" mark when select file is attached to "TO & CC- external " reply  email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I enter value "Test false Attachment" into field "Subject" on send email modal
    When I enter value "Test false Attachment" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I perform quick search for "Test false Attachment" in "---program:-:communicationHistoryTableId---" panel
    And I click on "Reply" icon for "Test false Attachment" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "Test false Attachment" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @187639 @sprint26 @dnyaneshwari
  Scenario:Send Email -To verify , User should be able to see "false" mark when select file is attached to "TO & CC- group " reply  email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    Given I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "Edit" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:ToField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    When I select value "group 1" with iconName "fa fa-users" into field on send email modal
    When I enter value "reply for To group" into field "Subject" on send email modal
    When I enter value "reply for To group" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    And I click on "Reply" icon for "reply for To group" inside flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "reply the mail" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    When I perform quick search for "reply for To group" in "---program:-:communicationHistoryTableId---" panel
    Then I softly see value "false" for title "Attachment" inside table "---program:-:communicationHistoryTableId---"

  @205452 @sprint6 @ToVerifySpelling @dnyaneshwari
  Scenario:Send Email -To verify,Spelling of 'Successfully' in confirmation message of Send Email modal is now corrected.
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Email Created" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I see the following messages in the page details :
      | Email Sent Successfully. |

  @205481 @sprint6 @ToVerifySpelling @dnyaneshwari
  Scenario:Send Email -To verify,Spelling of 'Successfully' in confirmation message of Send Email modal is now corrected for internal user
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "Test confirmation message" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I see the following messages in the page details :
      | Email Sent Successfully. |

  @194897 @ToVerifyUserShouldNotSee"UploadFileModal"WhenTypeTextpressEnter @sprint1 @dnyaneshwari
  Scenario: Send Email - To verify , User should not be able to see "Upload file modal" when type any text in " TO " field and press "Enter"
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @194912 @ToVerifyUserShouldNotSee"UploadFileModal"WhenTypeTextpressEnter @sprint1 @dnyaneshwari
  Scenario: To verify , User should not be able to see "Upload file modal" when type any text in " TO & CC" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:CcField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @194914 @ToVerifyUserShouldNotSee"UploadFileModal"WhenTypeTextpressEnter @sprint1 @dnyaneshwari
  Scenario: To verify , User should not be able to see "Upload file modal" when the user check "Internal" in the checkbox & type any text in "CC" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Internal"
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @195096 @ToVerifyUserShouldNotSee"UploadFileModal"WhenTypeTextpressEnter @sprint1 @dnyaneshwari
  Scenario:  To verify , User should not be able to see "Upload file modal" when the user check "Internal" in the checkbox & type any text in "TO" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:ToField}" on send email modal
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @195098 @ToVerifyUserShouldNotSee"UploadFileModal"WhenTypeTextpressEnter @sprint1 @dnyaneshwari
  Scenario: To verify , User should not be able to see "Upload file modal" when the user check "Group" in the checkbox & type any text in "CC" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "Automation Testing Group" into field "{testData:CcField}" on send email modal
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @195097 @ToVerifyUserShouldNotSee"UploadFileModal"WhenTypeTextpressEnter @sprint1 @dnyaneshwari
  Scenario: To verify , User should not be able to see "Upload file modal" when the user check "External" in the checkbox & type any text in "CC" field and press enter
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "snehal.mulange@reisystems.in;ashwini.mahore@reisystems.in" into field "{testData:CcField}" on send email modal
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "External"
    And I press enter key
    Then I do not see "Upload" modal window is displayed

  @69217 @validateIfGroupCheckboxCheckedAtCCFieldThenOnlyUserGroupsIsShownInAutoSuggestionBox @sendEmail
  Scenario: Validate If Group checkbox is checked At CC Field then only Group is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I pause execution for "3" seconds
    When I click on "{testData:CcField}" email Search By field and select dropdown value as "Groups"
    When I enter value "group" into field "{testData:CcField}" on send email modal
    Then I see iconName "fa fa-users" with user "group 1" is displayed on send email modal
    Then I see iconName "fa fa-users" with user "group for Admin" is displayed on send email modal

  @69095 @validateIfInternal+ExternalCheckboxCheckedAtToFieldThenBothUserIsShownInAutoSuggestionBox @sendEmail @needToUpdate
  Scenario: Validate If Internal+ External checkbox is checked At To Field then only Group is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing"
    When I click on "View" icon for "Automation Internal Program for Testing" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "{testData:ToField}" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName         |
      | Automation EXE   |
      | Automation PM1   |
      | Automation Admin |

  @169705 @tejal
  Scenario: Verify user reply email with select file that previously send from TO field as 'internal' with files and click on  reply View action on that reply mailthen added fields in Email Body structure are  seen in the mail body
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | true              | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantor State Program | Name                      | TAB-2626                   |
    Given I delete the record "Automation Program For Test" from the object "Program__c" with field "ProgramName__c"
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "ProgramCreation_v" values from "Program_Field_Values_QA_org.xlsx"
    And I click on "Save and Continue" in the page details
    And I save the field labeled "EGMS ID" as "id"
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "{testData:ToField}" email Search By field and select dropdown value as "Internal"
    When I enter value "snehal.mulange@reisystems.in" into field "{testData:ToField}" on send email modal
    When I enter value "test reply" into field "Subject" on send email modal
    When I enter value "test reply" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    And I refresh the page
    When I click on "Reply" icon for "test reply" inside table
    When I enter value "reply the mail" into field "Body Content" on send email modal
    And I click modal button "Select Files"
    And I pause execution for "10" seconds
    When I check "SendEmailAttachment.pdf" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    And I close modal by clicking the top right x button
    When I click on "Send" button in send email modal
    And I pause execution for "5" seconds
    And I refresh the page
    When I click on "View" icon for "RE: test reply" inside table
    Then I see "reply the mail" as "Body Content" on send email modal
    Then I see "-----Original Message-----" as "Body Content" on send email modal
    Then I see "From: automationadmin@yopmail.com" as "Body Content" on send email modal
    Then I see "Sent:" as "Body Content" on send email modal
    Then I see "To: snehal.mulange@reisystems.in" as "Body Content" on send email modal
    Then I see "Subject: test reply" as "Body Content" on send email modal
    Then I see text as "Please find below links to additional attachments other than those attached to this email. Click the filename to view the attachment" in reply email modal
    Then I see "SendEmailAttachment.pdf" as "Body Content" on send email modal