@sendEmail-component @regression-test5 @sendEmail
Business Need: Send Email Component Scenarios
  Test all send email component based scenarios
  As a configuration manager i make different configurational changes in send email component custom metadata and will validate them.

  @69004 @validateDisplayOfAttachmentComponentInSendEmailModal
  Scenario: Enabling Attachment section from custom metadata config and validating display of attachments in send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I have "customMetaData" configuration as below:
      | id                 | label                 | booleanValue | customMetaDataApiName    |
      | m031C000000k9o3QAA | EnableEmailAttachment | true         | GNT__KeyValueHolder__mdt |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    And I update custom metadata setting changes:
      | id                 | label                 | booleanValue | customMetaDataApiName    |
      | m031C000000k9o3QAA | EnableEmailAttachment | true         | GNT__KeyValueHolder__mdt |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see Attachment section is displayed under send email modal

  @69005 @validateDisplayOfToEmailvalidationMessageInSendEmailModal
  Scenario: Validate if email id not associated with contact/user is entered then alert message is displayed on send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I have "customMetaData" configuration as below:
      | id                 | label                 | booleanValue | customMetaDataApiName    |
      | m031C000000k9o8QAA | EnableEmailValidation | true         | GNT__KeyValueHolder__mdt |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    And I update custom metadata setting changes:
      | id                 | label                 | booleanValue | customMetaDataApiName    |
      | m031C000000k9o8QAA | EnableEmailValidation | true         | GNT__KeyValueHolder__mdt |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "testautomation@gmail.com" into field "To" on send email modal
    When I enter value "Test automation mail subject 1" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I see the following messages in the page details contains:
      | The below listed To email's are not associated with any Contact/User: |

  @69092 @validateIfInternalCheckboxCheckedAtToFieldThenOnlyInternalUserIsShownInAutoSuggestionBox
  Scenario: Validate If internal checkbox is checked at To Field then only internal user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "To" on send email modal
    Then I see iconName "fa fa-user" with user "Automation PM" is displayed on send email modal

  @69094 @validateIfExternalCheckboxCheckedAtToFieldThenOnlyExternalUserIsShownInAutoSuggestionBox
  Scenario: Validate If External checkbox is checked At To Field then only external user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "External"
    When I enter value "Automation spi" into field "To" on send email modal
    Then I see iconName "fa fa-user" with user "Automation spi" is displayed on send email modal

  @69096 @validateIfGroupCheckboxCheckedAtToFieldThenOnlyUserGroupsIsShownInAutoSuggestionBox
  Scenario: Validate If Group checkbox is checked At To Field then only Group is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "Groups"
    When I enter value "Automation Testing Group" into field "To" on send email modal
    Then I see iconName "fa fa-users" with user "Automation Testing Group" is displayed on send email modal

  @69214 @validateIfInternalCheckboxCheckedAtCCFieldThenOnlyInternalUserIsShownInAutoSuggestionBox
  Scenario: Validate If internal checkbox is checked at CC field then only internal user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "CC" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "CC" on send email modal
    Then I see iconName "fa fa-user" with user "Automation PM" is displayed on send email modal

  @69215 @validateIfExternalCheckboxCheckedAtCCFieldThenOnlyExternalUserIsShownInAutoSuggestionBox
  Scenario: Validate If External checkbox is checked At CC Field then only external user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "CC" email Search By field and select dropdown value as "External"
    When I enter value "Automation spi" into field "CC" on send email modal
    Then I see iconName "fa fa-user" with user "Automation spi" is displayed on send email modal

  @69216 @validateIfInternal+ExternalCheckboxCheckedAtCCFieldThenBothUserIsShownInAutoSuggestionBox
  Scenario: Validate If Internal+ External checkbox is checked At CC Field then only Group is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "CC" email Search By field and select dropdown value as "Internal"
    When I click on "CC" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "CC" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName       |
      | Automation PM  |
      | Automation spi |

  @69090 @validateIfAttachmentUploadedAndEmailSendThenEmailIsSentWithUploadedFile
  Scenario: Validate If attachment uploaded and email is send then email is sent with uploaded attachment under send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I have "customMetaData" configuration as below:
      | id                 | label                 | booleanValue | customMetaDataApiName    |
      | m031C000000k9o3QAA | EnableEmailAttachment | true         | GNT__KeyValueHolder__mdt |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    And I update custom metadata setting changes:
      | id                 | label                 | booleanValue | customMetaDataApiName    |
      | m031C000000k9o3QAA | EnableEmailAttachment | true         | GNT__KeyValueHolder__mdt |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "Test automation mail subject 1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Delete" icon for "Test automation mail subject 1" inside table
    When I pause execution for "2" seconds
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "To" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test automation mail subject 1" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on "Send" button in send email modal
    Then I see attachment "SendEmailAttachment.pdf" is present in send email modal

  @81106 @validateAtReplyModalIfInternalCheckboxCheckedAtCCFieldThenOnlyInternalUserIsShownInAutoSuggestionBox
  Scenario: Validate while replying to email If internal checkbox is checked at CC field then only internal user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "DND-Test Automation Record" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "DND-Test Automation Record" inside table
    When I click on "CC" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "CC" on send email modal
    Then I see iconName "fa fa-user" with user "Automation PM" is displayed on send email modal

  @81118 @validateAtReplyModalIfExternalCheckboxCheckedAtCCFieldThenOnlyExternalUserIsShownInAutoSuggestionBox
  Scenario: Validate while replying to email If internal checkbox is checked at CC field then only internal user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "DND-Test Automation Record" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "DND-Test Automation Record" inside table
    When I click on "CC" email Search By field and select dropdown value as "External"
    When I enter value "Automation spi" into field "CC" on send email modal
    Then I see iconName "fa fa-user" with user "Automation spi" is displayed on send email modal

  @81120 @validateAtReplyModalIfInternal+ExternalCheckboxCheckedAtCCFieldThenBothUserIsShownInAutoSuggestionBox
  Scenario: Validate while replying to email If internal checkbox is checked at CC field then only internal user is shown in suggestion box at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "DND-Test Automation Record" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "DND-Test Automation Record" inside table
    When I click on "CC" email Search By field and select dropdown value as "Internal"
    When I click on "CC" email Search By field and select dropdown value as "External"
    When I enter value "Automation" into field "CC" on send email modal
    Then I see below users is displayed in suggestion box under send email modal:
      | userName       |
      | Automation PM  |
      | Automation spi |

  @89268 @validateTheItemsPresentInSearByFieldDropDownAtTOEmailFieldAtSendEmailModal @sendEmail
  Scenario: Validate the options present under search by field dropdown at TO email field at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field
    Then I softly see "To" email search by field contains dropdown value as "Internal"
    Then I softly see "To" email search by field contains dropdown value as "External"
    Then I softly see "To" email search by field contains dropdown value as "Groups"

  @89269 @validateTheItemsPresentInSearByFieldDropDownAtCCEmailFieldAtSendEmailModal @sendEmail
  Scenario: Validate the options present under search by field dropdown at CC email field at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "CC" email Search By field
    Then I softly see "CC" email search by field contains dropdown value as "Internal"
    Then I softly see "CC" email search by field contains dropdown value as "External"
    Then I softly see "CC" email search by field contains dropdown value as "Groups"

  @89615 @validateEmailSubjectWithSpecialCharacterIsShownProperlyInViewModal @sendEmail
  Scenario: Validate special characters present under subject in sent email view modal are displayed properly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "1@&%#$*\|/test;:!<>?[]{}()" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Delete" icon for "1@&%#$*\|/test;:!<>?[]{}()" inside table
    When I pause execution for "2" seconds
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "To" on send email modal
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
  Scenario: Validate special characters present under body in sent email view modal are displayed properly
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "1@&%#$*\|/test;:!<>?[]{}()" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Delete" icon for "1@&%#$*\|/test;:!<>?[]{}()" inside table
    When I pause execution for "2" seconds
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "To" on send email modal
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
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "Re: special char in reply as @&%#$*\|/test;:!<>?[]{}()" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Delete" icon for "Re: special char in reply as @&%#$*\|/test;:!<>?[]{}()" inside table
    When I pause execution for "2" seconds
    When I navigate to "Collab" sub tab
    When I perform quick search for "DO NOT DELETE EMAIL @&%#$*\|/test;:!<>?[]{}()" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "DO NOT DELETE EMAIL @&%#$*\|/test;:!<>?[]{}()" inside table
    When I enter value "Re: special char in reply as @&%#$*\|/test;:!<>?[]{}()" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Re: special char in reply as @&%#$*\|/test;:!<>?[]{}()" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Re: special char in reply as @&%#$*\|/test;:!<>?[]{}()" inside table
    Then I softly see "DO NOT DELETE EMAIL @&%#$*\|/test;:!<>?[]{}()" as "Subject" on send email modal
    Then I softly see "Re: special char in reply as @&%#$*\|/test;:!<>?[]{}()" as "Body Content" on send email modal

  @89743 @validateReplyModalTitleAtSendEmail @sendEmail
  Scenario: Validate reply modal title at send email
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "DND-Test Automation Record" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "DND-Test Automation Record" inside table
    Then I see "Reply" opens in overLay window

  @89675 @validateThatFileIsDeletedSuccessfullyByclickOnCrossIconAtAttachedFileInSendEmailModal @sendEmail
  Scenario: Validate that attached file is deleted successfully by click on cross icon at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "To" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test automation mail subject 1" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I click on cross icon at "SendEmailAttachment.pdf" attachment inside send email modal
    Then I see attached file "SendEmailAttachment.pdf" is deleted successfully inside send email modal

  @89677 @validateThatFileIsDeletedSuccessfullyFromMultipleFilesByclickOnCrossIconAtAttachedFileInSendEmailModal @sendEmail
  Scenario: Validate that attached file is deleted successfully from multiple uploaded file by click on cross icon at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "To" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test automation mail subject 1" into field "Subject" on send email modal
    When I upload attachment "SendEmailAttachment.pdf" in send email modal
    When I upload attachment "AttachmentTesting.pdf" in send email modal
    When I upload attachment "TestAutomation.txt" in send email modal
    When I click on cross icon at "SendEmailAttachment.pdf" attachment inside send email modal
    Then I see attached file "SendEmailAttachment.pdf" is deleted successfully inside send email modal

  @90397 @validateDisplayOfRequiredFieldvalidationMessageInSendEmailModal @sendEmail
  Scenario: Validate if required field value is not entered and click on save then alert message is displayed on send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "Test automation mail subject 1" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I see the following messages in the page details contains:
      | Enter To Email Address. |

  @90390 @validateToEmailSuggestionBoxSizeIfGreaterThan5RecordAreSuggestedInSendEmailModal @sendEmail
  Scenario: Validate suggested email's box size at To field if more than 5 records are suggested inside send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation" into field "To" on send email modal
    Then I see search item display box size at "To" field is proper for "greater than 5" results

  @90388 @validateToEmailSuggestionBoxSizeIfLessThan5RecordAreSuggestedInSendEmailModal @sendEmail
  Scenario: Validate suggested email's box size at To field if less than 5 records are suggested inside send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "Internal"
    When I enter value "David PM" into field "To" on send email modal
    Then I see search item display box size at "To" field is proper for "Less than 5" results

  @89234 @validateDisplayOfToEmailSentSUccessfullyMessageInSendEmailModal @sendEmail
  Scenario: Validate if reply email is sent then alert message is displayed on send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "Re: DND-Test Automation Record" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Delete" icon for "Re: DND-Test Automation Record" inside table
    When I pause execution for "2" seconds
    When I navigate to "Collab" sub tab
    When I perform quick search for "DND-Test Automation Record" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "DND-Test Automation Record" inside table
    When I enter value "test body content" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Re: DND-Test Automation Record" in "---program:-:communicationHistoryTableId---" panel
    Then I see "Re: DND-Test Automation Record" value in flex table id "---program:-:communicationHistoryTableId---"

  @89725 @validateAsteriskMarkAtRequiredFieldsInSendEmailModalAtViewSendEmailWindow @sendEmail
  Scenario: Validate asterisk mark is displayed at required fields in send email modal at view mail window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "DND-Test Automation Record" in "---program:-:communicationHistoryTableId---" panel
    When I click on "view" icon for "DND-Test Automation Record" inside table
    Then I do not see asterisk mark at "To" field is displayed at send email modal

  @91328 @validateAsteriskMarkAtRequiredFieldsInSendEmailModalAtReplyMailWindow @sendEmail
  Scenario: Validate asterisk mark is displayed at required fields in send email modal at reply mail window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "DND-Test Automation Record" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "DND-Test Automation Record" inside table
    Then I see asterisk mark at "To" field is displayed at send email modal

  @101035 @validateSentDateOfEmailInISTModeAtSendEmailModal
  Scenario: Validate send date of an email on send email modal for IST time zone
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update the locale and timezone related changes:
      | locale | timeZone     |
      | en_IN  | Asia/Kolkata |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "DND-Test Automation Record" in "---program:-:communicationHistoryTableId---" panel
    When I click on "view" icon for "DND-Test Automation Record" inside table
    Then I softly see "4/9/2020 3:35 pm" on html page

  @101041 @validateSentDateOfEmailInEDTModeAtSendEmailModal
  Scenario: Validate send date of an email on send email modal for EDT time zone
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update the locale and timezone related changes:
      | locale | timeZone         |
      | en_CA  | America/New_York |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "DND-Test Automation Record" in "---program:-:communicationHistoryTableId---" panel
    When I click on "view" icon for "DND-Test Automation Record" inside table
    Then I softly see "04/09/2020 6:05 AM" on html page

  @101042 @validateSentDateOfEmailInESTModeAtSendEmailModal
  Scenario: Validate send date of an email on send email modal for EST time zone
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I have "timeZoneLocale" configuration as below:
      | locale | timeZone         |
      | en_US  | America/New_York |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    And I update the locale and timezone related changes:
      | locale | timeZone       |
      | en_US  | America/Panama |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "DND-Test Automation Record" in "---program:-:communicationHistoryTableId---" panel
    When I click on "view" icon for "DND-Test Automation Record" inside table
    Then I softly see "9/4/2020 5:05 AM" on html page

  @102057 @validateDisplayOfSelectFilesComponentInSendEmailModal
  Scenario: Enabling select files section from custom metadata config and validating display of attachments in send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
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
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I see select files section is displayed under send email modal

  @102059 @validateSelectFilesComponentIsNotDisplayedWhenCheckboxIsUncheckedInCustomMetadataInSendEmailModal @wip @apiIssue
  Scenario: disabling select files section from custom metadata config and validating display of attachments in send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    Given I have "customMetaData" configuration as below:
      | id                 | label                          | booleanValue | customMetaDataApiName    |
      | m031C000000XZZKQA4 | SendEmailFilesLinkConfigHolder | false        | GNT__KeyValueHolder__mdt |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    And I update custom metadata setting changes:
      | id                 | label                          | booleanValue | customMetaDataApiName    |
      | m031C000000XZZKQA4 | SendEmailFilesLinkConfigHolder | false        | GNT__KeyValueHolder__mdt |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    Then I do not see select files section is displayed under send email modal

  @102090 @validateThatSelectFilesModalIsDisplayedByClickOnSelectFileSectionInSendEmailModal
  Scenario: validate that select file modal is displayed by click on select files section in send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
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
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click modal button "Select Files"
    Then I see "Select File(s)" modal window is displayed

  @102092 @validateThatByClickOnSelectFileModalWindowAddFileWindowDisappearsUnderSendEmailModal
  Scenario: validate that by click on select file modal window, add file modal disappears and send email modal displays
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
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
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click modal button "Select Files"
    When I click on "×" icon at "Select File(s)" modal under Library
    Then I see "Select File(s)" modal is closed

  @102237 @validateThatFileUploadedFromSelectFileSectionIsDisplayedUnderSendEmailModalInEditMode
  Scenario: validate that file uploaded from select files section in send email modal in view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
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
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click modal button "Select Files"
    When I check "testAutomationFileDND.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    Then I see attachment "testAutomationFileDND.png" is present in send email modal

  @102238 @validateThatFileIsDeletedSuccessfullyByclickOnCrossIconAtSelectectFileInSendEmailModal @sendEmail
  Scenario: Validate that selected file is deleted successfully by click on cross icon at send email modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
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
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    And I click modal button "Select Files"
    When I check "testAutomationFileDND.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on cross icon at "testAutomationFileDND.png" attachment inside send email modal
    Then I see attached file "testAutomationFileDND.png" is deleted successfully inside send email modal

  @102239 @validateThatFileUploadedFromSelectFileSectionIsDisplayedUnderSendEmailModalInViewMode
  Scenario: validate that file uploaded from select files section in send email modal in view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
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
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "Test data select file" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Delete" icon for "Test data select file" inside table
    When I pause execution for "2" seconds
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "To" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test data select file" into field "Subject" on send email modal
    And I click modal button "Select Files"
    When I check "testAutomationFileDND.png" boxes in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on top right button "Add" in flex table with id "---program:-:flexGridFilesLinkId---"
    When I click on "Send" button in send email modal
    Then I see attachment "testAutomationFileDND.png" is present in send email modal

  @101273 @SentDateOfEmailAtSendEmailModalForNewlyCreatedRecord
  Scenario: Validate send date of an email on send email modal for newly created record
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programInCreatedModeOnly}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programInCreatedModeOnly}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "DND Email Created To Check Date" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Delete" icon for "DND Email Created To Check Date" inside table
    When I pause execution for "2" seconds
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "To" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "DND Email Created To Check Date" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "DND Email Created To Check Date" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "DND Email Created To Check Date" inside table
    Then I see current date is displayed in "Send Date" on send email modal

  @102240 @validateDisplayOfHypelinkInsertedAtSelectFileSectionWhileSendingEmil
  Scenario: Validate if email is sent by inserting link then a hyperlink is displayed inside message table
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
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
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios1}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios1}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "Email Created To Check Attached File Link" in "---program:-:communicationHistoryTableId---" panel
    Then I see hyperlink at column value "ProgramRecordDoNotDelete.png" inside "---program:-:communicationHistoryTableId---" table

  @104344 @validateDisplayOfSelectFilesComponentInSendEmailModalAtReply
  Scenario: Enabling select files section from custom metadata config and validating display of attachments in send email modal at reply
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
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
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios1}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios1}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "Email Created To Check Attached File Link	" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "Email Created To Check Attached File Link	" inside table
    Then I see select files section is displayed under send email modal

  @104330 @validateDisplayOfHyperlinkAtSelectFileNameInsideBodyAtReplyModal
  Scenario: validate hyperlink is displayed for the selected linked file name inside body at reply modal window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
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
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios1}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios1}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "Email Created To Check Attached File Link	" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "Email Created To Check Attached File Link	" inside table
    Then I see hyperlink is present at "ProgramRecordDoNotDelete.png" in rich text area field

  @104328 @validateDisplayOfHyperlinkAtSelectFileNameInsideBodyAtViewModal
  Scenario: validate hyperlink is displayed for the selected linked file name inside body at view modal window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
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
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    When I perform quick search for "{Framework_recordUsed:programForExpressionBuilderScenarios1}"
    When I click on "View Program Details" icon for "{Framework_recordUsed:programForExpressionBuilderScenarios1}" inside table
    When I navigate to "Collab" sub tab
    When I perform quick search for "Email Created To Check Attached File Link	" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Email Created To Check Attached File Link	" inside table
    Then I see hyperlink at value "ProgramRecordDoNotDelete.png" inside "sendEmail" modal

  @116303 @validateIfOneMailIdIsRemovedFromReplyEmailToFieldThenEmailSentSuccessfullyOnIt
  Scenario: Validate if one email id is removed from reply modal TO field then email sent successfully
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I enter value "dipak.pawar@reisystems.in;test@gmail.com" into field "To" on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I enter value "Test Automation Email1" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "Test Automation Email1" inside table
    When I enter value "test@gmail.com" into field "To" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Re: Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    Then I see "Re: Test Automation Email1" value in flex table id "---program:-:communicationHistoryTableId---"

  @116290 @validateNameIsDisplayedForExternalUserSelectedInToFieldInViewMode
  Scenario: Validate if external user selected in TO field then name of user is displayed in view modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "External"
    When I enter value "Automation spi" into field "To" on send email modal
    When I select value "Automation spi" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Test Automation Email1" inside table
    Then I softly see "Automation spi" on html page

  @116243 @validateNameIsDisplayedForSelectedUserInToFieldAtReplyMailWhenOpenInViewMode
  Scenario: Validate if external user selected in TO field at reply email then name of user is displayed in view modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "External"
    When I enter value "Automation spi" into field "To" on send email modal
    When I select value "Automation spi" with iconName "fa fa-user" into field on send email modal
    When I click on "CC" email Search By field and select dropdown value as "Internal"
    When I enter value "Automation PM" into field "CC" on send email modal
    When I select value "Automation PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I perform quick search for "Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "Test Automation Email1" inside table
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Re: Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Re: Test Automation Email1" inside table
    Then I softly see "Automation spi" on html page
    Then I softly see "Automation PM" on html page

  @116299 @validateGroupNameIsDisplayedForSelectedGroupInToAndCCFieldAtViewAndReplyMailWhenOpenInViewMode
  Scenario: Validate if group is selected in TO field at email and reply email modal then name of group is displayed in view modal
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "Groups"
    When I enter value "Automation Testing Group" into field "To" on send email modal
    When I select value "Automation Testing Group" with iconName "fa fa-users" into field on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    And I pause execution
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
    When I click on "CC" email Search By field and select dropdown value as "Groups"
    When I enter value "Automation Testing Group" into field "CC" on send email modal
    When I select value "Automation Testing Group" with iconName "fa fa-users" into field on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Re: Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Re: Test Automation Email1" inside table
    Then I softly see "Automation Testing Group" on html page

  @116300 @validateToAndCCUserNameIsDisplayedInsideBodyFieldAtViewAndReplyMailWhenOpenInViewMode
  Scenario: Validate that TO and CC email displayed properly inside body field at reply and email modal in view mode
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "External"
    When I enter value "ExternalP User 1" into field "To" on send email modal
    When I select value "ExternalP User 1" with iconName "fa fa-user" into field on send email modal
    When I click on "CC" email Search By field and select dropdown value as "Internal"
    When I enter value "Bob PM" into field "CC" on send email modal
    When I select value "Bob PM" with iconName "fa fa-user" into field on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I enter value "Test Mail Body" into field "Body Content" on send email modal
    When I click on "Send" button in send email modal
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "View" icon for "Test Automation Email1" inside table
    Then I softly see "Test Mail Body" as "Body Content" on send email modal

  # @116300 to validate user name in body content at reply email modal -
    When I close modal by clicking the top right x button
    And I refresh the page
    When I navigate to "Collab" sub tab
    When I perform quick search for "Test Automation Email1" in "---program:-:communicationHistoryTableId---" panel
    When I click on "Reply" icon for "Test Automation Email1" inside table
    When I click on "Send" button in send email modal
    Then I softly see "From: nauman.shahid@reisystems.com" as "Body Content" on send email modal
    Then I softly see "To: govgrantsuser@gmail.com" as "Body Content" on send email modal

  @116304 @validateIfUserRemovesNameFromToEmailThenAutoSuggestionBoxDisappearsFromToEmailField
  Scenario: Validate if user remove name from To email and keep the To email field blank then auto suggestion box disappears
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "External"
    When I enter value "ExternalP User 1" into field "To" on send email modal
    Then I softly see user suggestion box displayed at send email modal
    When I select value "ExternalP User 1" with iconName "fa fa-user" into field on send email modal
    When I enter value "Dipak@gmail.com" into field "To" on send email modal
    Then I softly do not see user suggestion box displayed at send email modal

  @118790 @validateEmailIsSentSuccessfullyToMultipleGroupsAndIsDisplayedInToFieldAtSendEmailModal
  Scenario: Validate if multiple group is selected in TO field at email modal then email sent successfully and name displayed
    Given I have "default" configuration as below:
      | configurationCategory | fieldName | fieldOrignalValue | filterId         |
      | Page Tabs Config      | Is Active | false             | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory               | fieldName | fieldNewValue | coreComponentField    | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Tabs Config:Page Layout Action | Is Active | true          | Grantee State Program | Name                      | TAB-026                    |
    Given I have "global" configuration as below:
      | id                 | ownerId            | booleanValue                | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:false | GNT__GlobalConfig__c |
    And I update custom global setting changes:
      | id                 | ownerId            | booleanValue               | customSettingApiName |
      | a0W1500000GOSXdEAP | 0051C000007caLkQAI | GNT__EnableChatter__c:true | GNT__GlobalConfig__c |
    Given I delete the record "{Framework_recordUsed:programOnlyForApprovalAndSnapshotScenarios}" from the object "Program__c" with field "ProgramName__c"
    When I login as "Automation" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Draft Programs"
    And I click on top right button "New" in flex table with id "---program:-:programsTableId---"
    When I enter "Creation" values from "Program_Field_Values.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Collab" sub tab
    When I click on top right button "Send Email" in flex table with id "---program:-:communicationHistoryTableId---"
    When I click on "To" email Search By field and select dropdown value as "Groups"
    When I enter value "test group 1;test group 2" into field "To" on send email modal
    When I enter value "Test Automation Email1" into field "Subject" on send email modal
    When I click on "Send" button in send email modal
    Then I softly see "test group 1;test group 2" on html page