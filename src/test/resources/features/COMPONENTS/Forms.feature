@Forms
Business Need: Forms Scenarios flextable UI,Forms Interface
  As a configuration manager I make different configurational changes in Forms component and will validate them.

  @206307 @206310
  Scenario: All forms- SPI- UI- Verify forms displays under All forms page block
  All forms- SPI- UI- Verify Actions like Preview, view, edit are available
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    Then I softly see "All Forms " page block displayed
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Given I enter "Form Fields 2" values from "Application_Field_Values.xlsx"
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    Then I softly can see row level action button "Preview" against "Program Application Form" in flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I softly can see row level action button "View" against "Program Application Form" in flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I softly can see row level action button "Edit" against "Program Application Form" in flex table with id "---applicationIntake:-:allFormsTableId---"

  @206340 @208663 @206881 @206343 @208666
  Scenario: All forms- SPI- UI- Verify in View Form ID should get populated UI
  |All forms- SPI- UI- Verify in Edit Form ID should get populated UI|
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    Then I softly see "All Forms " page block displayed
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Given I enter "Form Fields 2" values from "Application_Field_Values.xlsx"
    And I save the field containing "Form ID" as "PFormID"
     #206343
    Then I see Form Id "{SavedValue:PFormID}" is displayed on form layout
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    And I click on "View" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I save the field containing "Form ID" as "PFormID"
    Then I see Form Id "{SavedValue:PFormID}" is displayed on form layout
    #208663
    Then I see Form Name "Program Specific Application form" is displayed on form layout
    #206881
    Then I softly see field "fieldTEXTAREAQuestion1__c" is not editable
    Then I softly see field "fieldTEXTAREAQuestion2__c" is not editable
    Then I softly see field "fieldTEXTAREAQuestion3__c" is not editable
    And I click on "Back" in the page details
    And I pause execution for "4" seconds
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Given I enter "Form Fields 1" values from "Application_Field_Values.xlsx"
    And I save the field containing "Form ID" as "SFormID"
    #208666
    Then I see Form Id "{SavedValue:SFormID}" is displayed on form layout
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    And I click on "View" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I save the field containing "Form ID" as "SFormID"
    Then I see Form Id "{SavedValue:SFormID}" is displayed on form layout
    #208663
    Then I see Form Name "Standard Assurances Form" is displayed on form layout
    #206880
    Then I softly see field "fieldAppplicationSubmitted__c" is not editable
    Then I softly see field "fieldSubmittedOnForm__c" is not editable

  @206346 @206349
  Scenario: All forms- SPI- UI- Verify all forms displays under dropdown
  | All forms- SPI- UI- Verify we can select forms from dropdown |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    When I click on "Save" in the page details
    Then I softly see dropdown with selected value as "Program Application Form" at form layout
    When I select "Standard Assurances Form" from dropdown at forms
    Then I softly see dropdown with selected value as "Standard Assurances Form" at form layout

  @206847
  Scenario: All forms- SPI- UI- Verify if we shuffle through forms from dropdown, we are getting confirmation message, in edit form layout.
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I softly see dropdown with selected value as "Program Application Form" at form layout
    When I select "Standard Assurances Form" from dropdown at forms
    Then I see confirmation box with message "Warning:If you Navigate away from this form without saving,your changes will be lost." is displayed

  @206850 @206853
  Scenario: All forms- SPI- UI- Verify in "Edit" mode, while we are shuffling through forms, if we hit ‘Cancel’ button on confirmation message modal we should not redirect to new form
  |All forms- SPI- UI- Verify, in edit mode, while we are shuffling through forms, if we hit ‘OK’ button we should redirect to new form|
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I softly see dropdown with selected value as "Program Application Form" at form layout
    When I select "Standard Assurances Form" from dropdown at forms
    When I click alert button "Cancel"
    Then I softly see dropdown with selected value as "Program Application Form" at form layout
    When I select "Standard Assurances Form" from dropdown at forms
    When I click alert button "OK"
    #206853
    Then I softly see dropdown with selected value as "Standard Assurances Form" at form layout

  @206856 @206863 @382018 @208805 @206859 @206334 @Sanity  @SanityForms
  Scenario: All forms- SPI- UI- Verify when we hit ‘Save’ button success message should pop-up
  |All Forms - SPI- UI- Verify when we hover on (i) icon Help text should be displayed|
  |All forms- SPI- UI- Verify the success message will be automatically closed after the set interval of time out|
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    Then I softly see "All Forms " page block displayed
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Given I enter "Form Fields 1" values from "Application_Field_Values.xlsx"
    And I click on "Save" in the page details
    Then I see the following message in the page details :
      | Form saved successfully. |
    And I pause execution for "30" seconds
    #206859 #206334
    Then I cannot see the following message in the page details :
      | Form saved successfully. |
    When I hovering mouse on help text icon inside "Standard Assurances Form"
    #208805
    Then I see "Name that shows up on the User interface this is done because the Application and Pre-Application are using the same Templates and layouts and the Forms that show up on the Forms tab is currently showing up the names" shown as help text

  @208998 @382044 @Sanity  @SanityForms @skiponjenkins
  Scenario: All Forms - SPI- UI- Verify we can download form as PDF
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    When I click on "Save" in the page details
    When I click on "Menu" in the page details
    Then I softly see "Download As PDF" options is displayed
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Program Specific Application Form" on page "1" of "govgrants" pdf file

  @208660
  Scenario: All forms- SPI- UI- Verify in preview Form name should not populate on UI
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Preview" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I do not see Form Name "Program Application Form" is displayed on form layout
    And I switch to parent tab
   # And I pause execution for "4" seconds
    And I click on "Preview" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I do not see Form Name "Standard Assurances Form" is displayed on form layout

  @206337
  Scenario:All forms- SPI- UI- Verify in preview Form ID should not populate on UI
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Preview" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I do not see Form Id "FN-01342" is displayed on form layout
    And I switch to parent tab
   # And I pause execution for "4" seconds
    And I click on "Preview" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I do not see Form Id "FN-01343" is displayed on form layout

  @208654
  Scenario: All forms- SPI- UI- Verify fields which are required for save denoted with (*)(!)
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    #When I click on "Save" in the page details
    #Then I see asterisk mark at "1a. Describe the activities and/or services to be provided. (10 points)" field
    Then I see required for submit symbol as "fa-exclamation-triangle" at "fieldQuestion1__c" field

  @208657
  Scenario:All forms- SPI- UI- Verify fields which are required for save ‘This field is required’ line should display on form
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue   | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Program Specific Application form | Name                      | PBD-19578                  |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Given I enter "Form Fields 2" values from "Application_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    And I clear the value from field "fieldQuestion1__c"
    And I click on "Save" in the page details
    Then I see error message contains text "This field is required"

  @206872 @382033 @Sanity  @SanityForms
  Scenario: All forms- SPI- UI- Verify if we hit ‘Yes’ button on confirmation message modal, in edit mode, and opened into view mode.
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see "Cancel" button is displayed
    Then I see "Save" button is displayed
    And I click on "Cancel" in the page details
    When I click alert button "Yes"
    Then I see page title "Opportunities: Program Specific Application form View ~ Grants Portal"

  @206875 @382028 @Sanity  @SanityForms
  Scenario: All forms- SPI- UI- Verify after saving changes when we hit ‘New Validate’ button, if data is missing in one or more fields that are required to submit error message should pop-up
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I click on "Save" in the page details
    #382028
    Then I see "Back" button is displayed
    Then I see "Edit" button is displayed
    Then I see "Validate" button is displayed
    And I click on "Validate" in the page details
    Then I see the following message in the page details :
      | Form cannot be validated because data is missing in one or more fields that are required to submit. To view the fields that are required to submit, click the Edit button. |

  @206878
  Scenario: All forms- SPI- UI- Verify after saving changes when we hit ‘New Validate’ button, if all required fields are filled success message should pop-up
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    Then I softly see "All Forms " page block displayed
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Given I enter "Form Fields 2" values from "Application_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I click on "Validate" in the page details
    Then I see the following message in the page details :
      | Form Validated Successfully. |

  @208651
  Scenario: All forms- SPI- UI- Verify when we hit ‘Save’ button, if data is missing in one or more fields which  are required to save error message should pop-up
    Given I have "default" configuration as below:
      | configurationCategory                    | fieldName         | fieldOrignalValue   | filterId         |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Submit | ApiGeneratedId:0 |
    Given I setup test configuration as below:
      | configurationCategory                    | fieldName         | fieldNewValue     | coreComponentField                | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Page Block Config:Page Block Rule Detail | Required Behavior | Required for Save | Program Specific Application form | Name                      | PBD-19578                  |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Given I enter "Form Fields 2" values from "Application_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I click on "Edit" in the page details
    And I clear the value from field "fieldQuestion1__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details :
      | 1a. Describe the activities and/or services to be provided. (10 points) is required to save. |

  @208678 @208669
  Scenario: All forms- SPI- UI- Verify in preview Submitted on under Authorized Representative should not populate on UI
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Preview" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I do not see Name or Submitted On "Submitted On:" is displayed on form under Authorized Official Name or Authorized Representative
    Then I do not see Name or Submitted On "Name" is displayed on form under Authorized Official Name or Authorized Representative

  @208681 @208672
  Scenario: All forms- SPI- UI- Verify in View Submitted on under Authorized Representative should get populated UI
  All forms- SPI- UI- Verify in View Name under Authorized Representative should get populated UI
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    Then I softly see "All Forms " page block displayed
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Given I enter "Form Fields 1" values from "Application_Field_Values.xlsx"
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    And I click on "View" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I save the field labeled "Submitted On:" as "SUBMITTEDON"
    And I save the field labeled "Name" as "NAME"
    Then I see Name or Submitted On "{SavedValue:SUBMITTEDON}" is displayed on form under Authorized Official Name or Authorized Representative
    Then I see Name or Submitted On "{SavedValue:NAME}" is displayed on form under Authorized Official Name or Authorized Representative

  @208684 @208675
  Scenario: All forms- SPI- UI- Verify in Edit Submitted on under Authorized Representative should get populated UI
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I save the field labeled "Submitted On:" as "SUBMITTEDON"
    And I save the field labeled "Name" as "NAME"
    Then I see Name or Submitted On "{SavedValue:SUBMITTEDON}" is displayed on form under Authorized Official Name or Authorized Representative
    Then I see Name or Submitted On "{SavedValue:NAME}" is displayed on form under Authorized Official Name or Authorized Representative

  @206320 @206323 @206326 @206329
  Scenario: Last modified- SPI- UI- Verify Last modified by name is captured
  Last modified -SPI- UI- Verify Last modified Date and time is captured
  Last modified -SPI -UI- Verify Last modified by name must be updated if form is modified by another user
  Last modified - UI- Verify Last modified Date and time must be updated if form is modified
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Overview" sub tab
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I save the field labeled "Submitted On:" as "LASTMODIFIEDDATEANDTIME"
    And I save the field labeled "Name" as "LASTMODIFIEDBY"
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    And I pause execution for "5" seconds
    Then I see value "{SavedValue:LASTMODIFIEDDATEANDTIME}" for title "Last Modified Date" against the value "Standard Assurances Form" inside table "---applicationIntake:-:allFormsTableId---"
    Then I see value "{SavedValue:LASTMODIFIEDBY}" for title "Last Modified By" against the value "Standard Assurances Form" inside table "---applicationIntake:-:allFormsTableId---"

  @206884
  Scenario: All forms- SPI- UI- Verify if we hit ‘Back’ button, on View mode form we should redirect back to File tab
  Last modified - UI- Verify Last modified Date and time must be updated if form is modified
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I click on "Cancel" in the page details
    And I click on "Back" in the page details
    Then I softly see "All Forms " page block displayed

  @206866 @382022 @Sanity  @SanityForms
  Scenario: All forms- SPI- UI- Verify if we hit ‘Cancel’ button, on edit mode form confirmation message modal should open
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Given I enter "Form Fields 1" values from "Application_Field_Values.xlsx"
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    #And I click on "Cancel" in the page details
    And I click on "Cancel" in the page details without processing
    And I pause execution for "5" seconds
    Then I softly see confirmation box with body "Are you sure you want to cancel?" is displayed

  @206869
  Scenario: All forms- SPI- UI- Verify if we hit ‘No’ button on confirmation message modal, form should not get closed
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I click on "Cancel" in the page details
    When I click alert button "No"
    Then I see page title "Applications: Standard Assurances Form View ~ Grants Portal"

  @112348 @verifyByClickAtCancelButtonAtStandardAssuranceFormLayoutItShouldRedirectToApplicationDetailPageBySPIUser
  Scenario:validate that by click on standard assurance form layout, it is re-directed to application detail page by login as SPI user
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    When I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I save the field containing "Form ID" as "SFormID"
    When I click on "Cancel" in the page details
    Then I see "{SavedValue:SFormID}" shown as over view header

  @381964 @Sanity  @SanityForms
  Scenario: Sanity TC - SPI - To verify that all fields displayed in a enhanced form table, which have been added in display fields configuration
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    Then I see "Form Name" shown inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see "Mandatory" shown inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see "Percentage" shown inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see "Last Modified By" shown inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see "Last Modified Date" shown inside flex table with id "---applicationIntake:-:allFormsTableId---"
    #Then I see "Allow Edit?" shown inside flex table with id "---applicationIntake:-:allFormsTableId---"

  @381969 @Sanity  @SanityForms
  Scenario: Sanity TC - SPI - To verify that user is able to navigate to Edit layout of Enhanced form, on clicking on Edit action in table
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see title of current page is "Opportunities: Standard Assurances Form Edit ~ Grants Portal"

  @381972 @Sanity  @SanityForms
  Scenario: Sanity TC - SPI - To verify that user is able to navigate to View layout of Enhanced form, on clicking on View action in table
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    When I click on "Save" in the page details
    And I pause execution for "5" seconds
    Then I see title of current page is "Opportunities: Standard Assurances Form View ~ Grants Portal"

  @381994 @381986 @Sanity  @SanityForms
  Scenario: Sanity TC - SPI - To verify that user is able to see all page blocks in tab on Enhanced form as added in config
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see "Project Characteristics" page block displayed
    Then I see "Need for Project" page block displayed
    Then I see "Significance" page block displayed
    Then I see "Project Goals" page block displayed
    Then I see "Organization Capacity" page block displayed
    #Then I see "AwardFundingAccounts-SD1" page block displayed

  @382004
  Scenario:Sanity TC - SPI - To verify that user is able to see all fields in page blocks on Enhanced form as added in config
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see "Project Characteristics" page block displayed
    Then I softly see "fieldQuestion1__c" inside page block detail
    Then I softly see "fieldQuestion2__c" inside page block detail
    Then I softly see "fieldQuestion3__c" inside page block detail
    Then I softly see "fieldQuestion4__c" inside page block detail
    Then I softly see "fieldQuestion5__c" inside page block detail
    Then I softly see "fieldQuestion6__c" inside page block detail
    Then I softly see "fieldQuestion7__c" inside page block detail
    Then I softly see "fieldQuestion8__c" inside page block detail
    Then I softly see "fieldQuestion9__c" inside page block detail
    Then I softly see "fieldQuestion10__c" inside page block detail
    Then I softly see "fieldQuestion11__c" inside page block detail

  @382037 @Sanity  @SanityForms
  Scenario: Sanity TC - SPI - To verify that user is able to navigate to Edit layout of enhanced form, on clicking Edit action on View layout
  Last modified - UI- Verify Last modified Date and time must be updated if form is modified
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see page title "Opportunities: Program Specific Application form Edit ~ Grants Portal"

  @382040 @Sanity  @SanityForms
  Scenario: Sanity TC - SPI - To verify that user is able to validate enhanced form, on clicking on Validate action on View layout
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application Intake" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application Intake}" in "---applicationReview:-:reviewsTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application Intake}" inside flex table with id "---applicationReview:-:reviewsTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    When I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    Then I softly see "All Forms " page block displayed
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Given I enter "Form Fields 2" values from "Application_Field_Values.xlsx"
    And I click on "Save" in the page details
    And I click on "Validate" in the page details
    Then I see the following message in the page details :
      | Form validated successfully. |

  @206305 @206306 @wip
  Scenario Outline: All forms- Admin- Config- Verify forms displays under All forms page block
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    Then I softly see "All Forms " page block displayed

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206308 @206309 @wip
  Scenario Outline: All forms- Admin- Config- Verify Actions like Preview, view, edit are available
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    Then I softly can see row level action button "Preview" against "Program Application Form" in flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I softly can see row level action button "View" against "Program Application Form" in flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I softly can see row level action button "Edit" against "Program Application Form" in flex table with id "---applicationIntake:-:allFormsTableId---"

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @208996 @208997 @382041 @382042 @Sanity  @SanityForms @wip
  Scenario Outline: All Forms - Admin- Config- Verify we can download form as PDF
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    When I click on "Menu" in the page details
    Then I see "Download as PDF" options is displayed
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Program Specific Application Form" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
       # | PM    |

  @382038 @382039 @Sanity  @SanityForms @wip
  Scenario Outline: Sanity TC - Admin - To verify that user is able to validate enhanced form, on clicking on Validate action on View layout
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I click on "Validate" in the page details
    Then I see the following message in the page details :
      | Form validated successfully. |

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @382035 @382036 @Sanity  @SanityForms @wip
  Scenario Outline: Sanity TC - Admin - To verify that user is able to navigate to Edit layout of enhanced form, on clicking Edit action on View layout
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I click on "Edit" in the page details
    Then I see page title "Applications: Program Specific Application form Edit ~ As a Grantor"

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @382001 @382003 @Sanity  @SanityForms @wip
  Scenario Outline: Sanity TC - Admin - To verify that user is able to see all fields in page blocks on Enhanced form as added in config
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see "Project Characteristics" page block displayed
    Then I see field "fieldQuestion1__c" is disabled
    Then I see field "fieldQuestion1__c" inside page block
    Then I see field "fieldQuestion2__c" inside page block
    Then I see field "fieldQuestion3__c" inside page block
    Then I see field "fieldQuestion4__c" inside page block
    Then I see field "fieldQuestion5__c" inside page block
    Then I see field "fieldQuestion6__c" inside page block
    Then I see field "fieldTEXTAREAQuestion7__c" inside page block
    Then I see field "fieldTEXTAREAQuestion8__c" inside page block
    Then I see field "fieldTEXTAREAQuestion9__c" inside page block
    Then I see field "fieldTEXTAREAQuestion10__c" inside page block
    Then I see field "fieldTEXTAREAQuestion11__c" inside page block

    Examples:
      | User  |
      | Admin |
      | PM    |

  @206864 @382020 @382021 @Sanity  @SanityForms @wip
  Scenario Outline: All forms- Admin- Config- Verify if we hit ‘Cancel’ button, on edit mode form confirmation message should open
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I click on "Cancel" in the page details
    Then I softly see confirmation box with body "Are you sure you want to cancel?" is displayed
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @381987 @381990 @381982 @381983 @Sanity  @SanityForms @wip
  Scenario Outline:Sanity
  |TC - Admin - To verify that user is able to see all page blocks in tab on Enhanced form as added in config|
  |Sanity TC - PM - To verify that user is able to see all page blocks in tab on Enhanced form as added in config|
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see "Project Characteristics" page block displayed
    Then I see "Need for Project" page block displayed
    Then I see "Significance" page block displayed
    Then I see "Project Goals" page block displayed
    Then I see "Organization Capacity" page block displayed
    Then I see "AwardFundingAccounts-SD1" page block displayed
    Examples:
      | User  |
      | Admin |
      | PM    |

  @381970 @Sanity  @SanityForms @wip
  Scenario Outline: Sanity TC - Admin - To verify that user is able to navigate to View layout of Enhanced form, on clicking on View action in table
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see title of current page is "Applications: Standard Assurances Form View ~ As a Grantor"
    Examples:
      | User  |
      | Admin |
      | PM    |

  @381967 @381968 @Sanity  @SanityForms @wip
  Scenario Outline:
  |Sanity TC - Admin - To verify that user is able to navigate to Edit layout of Enhanced form, on clicking on Edit action in table|
  |Sanity TC - PM - To verify that user is able to navigate to Edit layout of Enhanced form, on clicking on Edit action in table|
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see title of current page is "Applications: Standard Assurances Form Edit ~ As a Grantor"
    Examples:
      | User  |
      | Admin |
      | PM    |

  @381941 @381942 @Sanity  @SanityForms @wip
  Scenario Outline:
  |Sanity TC - Admin - To verify that all fields displayed in a enhanced form table, which have been added in display fields configuration|
  |Sanity TC - PM - To verify that all fields displayed in a enhanced form table, which have been added in display fields configuration|
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    Then I see "Form Name" shown inside flex table with id "---program:-:toggleFlexTableFormEnhancedTableId---"
    Then I see "Mandatory" shown inside flex table with id "---program:-:toggleFlexTableFormEnhancedTableId---"
    Then I see "Percentage" shown inside flex table with id "---program:-:toggleFlexTableFormEnhancedTableId---"
    Then I see "Last Modified By" shown inside flex table with id "---program:-:toggleFlexTableFormEnhancedTableId---"
    Then I see "Last Modified Date" shown inside flex table with id "---program:-:toggleFlexTableFormEnhancedTableId---"
    Then I see "Allow Edit?" shown inside flex table with id "---program:-:toggleFlexTableFormEnhancedTableId---"
    Examples:
      | Users |
      | Admin |
      | PM    |

  @test @112347 @verifyByClickAtCancelButtonAtStandardAssuranceFormLayoutItShouldRedirectToApplicationDetailPageByPMUser @wip
  Scenario:validate that by click on standard assurance form layout, it is re-directed to application detail page by PM user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    When I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "FormEnhancedTable"
    When I click on "Cancel" in the page details
    Then I see "FN-01389" shown as over view header

  @test @112350 @verifyByClickAtCancelButtonAtStandardAssuranceFormLayoutItShouldRedirectToApplicationDetailPageByAdminUser @wip
  Scenario:validate that by click on standard assurance form layout, it is re-directed to application detail page by login as admin user
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    When I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "FormEnhancedTable"
    When I click on "Cancel" in the page details
    Then I see "FN-01389" shown as over view header

  @206867 @206868 @wip
  Scenario Outline:All forms- Admin- Config- Verify if we hit ‘No’ button on confirmation message modal, form should not get closed
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I click on "Cancel" in the page details
    When I click alert button "No"
    Then I see page title "Applications: Program Specific Application form Edit ~ As a Grantor"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206882 @206883 @wip
  Scenario Outline: All forms- Admin- Config- Verify if we hit ‘Back’ button, on View mode form we should redirect back to File tab
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I click on "Back" in the page details
    Then I softly see "All Forms " page block displayed
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206318 @206319 @206324 @206325 @206321 @206322 @206327 @206328 @wip
  Scenario Outline:Last modified- Admin- Config- Verify Last modified by name is captured
  Last modified- Admin- Config- Verify Last modified Date and time is captured
  Last modified- Admin- Config- Verify Last modified by name must be updated if form is modified by another user
  Last modified- Admin- Config- Verify Last modified Date and time must be updated if form is modified
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Overview" sub tab
    And I save the field labeled "Created By" as "CREATEDBY"
    Then I softly see field "{SavedValue:CREATEDBY}" inside page block
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I save the field labeled "Submitted On:" as "LASTMODIFIEDDATEANDTIME"
    And I save the field labeled "Name" as "LASTMODIFIEDBY"
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    And I pause execution for "5" seconds
    Then I see value "{SavedValue:LASTMODIFIEDDATEANDTIME}" for title "Last Modified Date" against the value "Standard Assurances Form" inside table "---applicationIntake:-:allFormsTableId---"
    Then I see value "{SavedValue:LASTMODIFIEDBY}" for title "Last Modified By" against the value "Standard Assurances Form" inside table "---applicationIntake:-:allFormsTableId---"

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206338 @206339 @208662 @208661 @206879 @206880 @wip
  Scenario Outline: All forms- Admin- Config- Verify in View Form ID should get populated UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see Form Id "FN-01341" is displayed on form layout
    #208662 #208661
    Then I see Form Name "Program Application Form" is displayed on form layout
     #206879 #206880
    Then I softly see field "fieldTEXTAREAQuestion1__c" is not editable
    Then I softly see field "fieldTEXTAREAQuestion2__c" is not editable
    Then I softly see field "fieldTEXTAREAQuestion3__c" is not editable
    And I click on "Back" in the page details
    And I pause execution for "4" seconds
    And I click on "View" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see Form Id "FN-01342" is displayed on form layout
    #208661 #208662
    Then I see Form Name "Standard Assurances Form" is displayed on form layout
    #206879
    Then I softly see field "fieldAppplicationSubmitted__c" is not editable
    Then I softly see field "fieldSubmittedOnForm__c" is not editable

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206341 @206342 @208664 @208665 @wip
  Scenario Outline: All forms- Admin- Config- Verify in Edit Form ID should get populated UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see Form Id "FN-01341" is displayed on form layout
    #208664 #208665
    Then I see Form Name "Program Specific Application form" is displayed on form layout
    And I click on "Back" in the page details
    And I pause execution for "4" seconds
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see Form Id "FN-01342" is displayed on form layout
    #208664 @208665
    Then I see Form Name "Standard Assurances Form" is displayed on form layout

    Examples:
      | User  |
      | ADMIN |
       # | PM    |

  @206344 @206345 @206347 @206348 @wip
  Scenario Outline: All forms- Admin- Config- Verify all forms displays under dropdown
  All forms- Admin- Config- Verify we can select forms from dropdown
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I softly see dropdown with selected value as "Program Application Form" at form layout
    When I select "Standard Assurances Form" from dropdown at forms
    Then I softly see dropdown with selected value as "Standard Assurances Form" at form layout

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206845 @206846 @wip
  Scenario Outline: All forms- Admin- Config- Verify if we shuffle through forms from dropdown, we are getting confirmation message in Edit Layout
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I softly see dropdown with selected value as "Program Application Form" at form layout
    When I select "Standard Assurances Form" from dropdown at forms
    Then I see confirmation box with message "Warning:If you Navigate away from this form without saving,your changes will be lost." is displayed

    Examples:
      | User  |
      | ADMIN |
       # | PM    |

  @206848 @206849 @wip
  Scenario Outline: All forms- Admin- Config- Verify In "Edit" mode, while we are shuffling through forms, if we hit ‘Cancel’ button on confirmation message modal we should not redirect to new form
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I softly see dropdown with selected value as "Program Application Form" at form layout
    When I select "Standard Assurances Form" from dropdown at forms
    When I click alert button "Cancel"
    Then I softly see dropdown with selected value as "Program Application Form" at form layout

    Examples:
      | User  |
      | ADMIN |
       # | PM    |

  @208682 @208683 @208673 @208674 @wip
  Scenario Outline: All forms- Admin- Config- Verify in Edit Submitted on under Authorized Representative should get populated UI
  All forms- PM- UI- Verify in Edit Name under Authorized Representative should get populated UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I save the field labeled "Submitted On:" as "SUBMITTEDON"
    And I save the field labeled "Name" as "NAME"
    Then I see Name or Submitted On "{SavedValue:SUBMITTEDON}" is displayed on form under Authorized Official Name or Authorized Representative
    Then I see Name or Submitted On "{SavedValue:NAME}" is displayed on form under Authorized Official Name or Authorized Representative

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206851 @206852 @wip
  Scenario Outline:All forms- Admin- Config- Verify in "Edit" mode,  while we are shuffling through forms, if we hit ‘OK’ button we should redirect to new form
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I softly see dropdown with selected value as "Program Application Form" at form layout
    When I select "Standard Assurances Form" from dropdown at forms
    When I click alert button "OK"
    Then I softly see dropdown with selected value as "Standard Assurances Form" at form layout

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206854 @206855 @206862 @206861 @382014 @382015 @Sanity  @SanityForms @wip
  Scenario Outline: All forms- Admin- Config- Verify when we hit ‘Save’ button success message should pop-up
  All forms- PM- UI- Verify when we select Edit action, form should be open in edit mode
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I pause execution for "5" seconds
         #206862  #206861
    Then I see page title "Applications: Program Specific Application form Edit ~ As a Grantor"
    And I click on "Save" in the page details
    Then I see the following message in the page details :
      | Form saved successfully. |
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @208803 @208804 @wip
  Scenario Outline: All Forms - Admin- Config- Verify when we hover on (i) icon Help text should be displayed
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    When I hovering mouse on help text icon inside "Standard Assurances Form"
    Then I see "Name that shows up on the User interface this is done because the Application and Pre-Application are using the same Templates and layouts and the Forms that show up on the Forms tab is currently showing up the names" shown as help text
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @208658 @208659 @wip
  Scenario Outline: All forms- Admin- Config- Verify in preview Form name should not populate on UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "Preview" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I do not see Form Name "Program Application Form" is displayed on form layout
    And I switch to parent tab
    And I pause execution for "4" seconds
    And I click on "Preview" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I do not see Form Name "Standard Assurances Form" is displayed on form layout
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206336 @206335 @wip
  Scenario Outline: All forms- PM- UI- Verify in preview Form ID should not populate on UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "Preview" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I do not see Form Id "FN-01341" is displayed on form layout
    And I switch to parent tab
    And I pause execution for "4" seconds
    And I click on "Preview" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I do not see Form Id "FN-01342" is displayed on form layout

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206857 @206858 @206332 @206333 @wip
  Scenario Outline: All forms- Admin- Config- Verify the success message will be automatically closed after the set interval of time out
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I click on "Save" in the page details
    And I pause execution for "30" seconds
    Then I cannot see the following message in the page details :
      | Form saved successfully. |

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @208652 @208653 @wip
  Scenario Outline: All forms- Admin- Config- Verify fields which are required for save denoted with (*)
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see asterisk mark at "1a. Describe the activities and/or services to be provided. (10 points)" field

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @208655 @208656 @wip
  Scenario Outline: All forms- Admin- Config- Verify fields which are required for save ‘This field is required’ line should display on form
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I clear the value from field "fieldQuestion1__c"
    And I click on "Save" in the page details
    Then I see error message contains text "This field is required"

    Examples:
      | User  |
      | ADMIN |
       # | PM    |

  @206870 @206871 @382030 @382032 @Sanity  @SanityForms @wip
  Scenario Outline: All forms- Admin- Config- Verify if we hit ‘Yes’ button on confirmation message modal, in edit mode, form should open in view mode
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    #382030 #382032
    Then I see "Cancel" button is displayed
    Then I see "Save" button is displayed
    And I click on "Cancel" in the page details
    When I click alert button "Yes"
    Then I see page title "Applications: Program Specific Application form View ~ As a Grantor"
    Examples:
      | User  |
      | ADMIN |
       # | PM    |

  @206873 @206874 @382025 @382026 @Sanity  @SanityForms @wip
  Scenario Outline: All forms- Admin- Config- Verify after saving changes when we hit ‘New Validate’ button, if data is missing in one or more fields that are required to submit error message should pop-up
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see "Back" button is displayed
    Then I see "Edit" button is displayed
    Then I see "New Validate" button is displayed
    Then I see "Validate" button is displayed
    And I click on "New Validate" in the page details
    Then I see the following message in the page details :
      | Form cannot be validated because data is missing in one or more fields that are required to submit. To view the fields that are required to submit, click the Edit button. |

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206876 @206877 @wip
  Scenario Outline: All forms- Admin- Config- Verify after saving changes when we hit ‘New Validate’ button, if all required fields are filled success message should pop-up
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    When I perform quick search for "Test Application by Tejashree"
    When I click on "View" icon for "Test Application by Tejashree" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I click on "New Validate" in the page details
    Then I see the following message in the page details :
      | Form Validated Successfully. |

    Examples:
      | User  |
      | ADMIN |
       # | PM    |

  @208676 @208677 @208667 @208668 @wip
  Scenario Outline: All forms- Admin- Config- Verify in preview Name under Authorized Representative should not populate on UI
  All forms- Admin- Config- Verify in preview Submitted on under Authorized Representative should not populate on UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "Preview" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I do not see Name or Submitted On "Submitted On:" is displayed on form under Authorized Official Name or Authorized Representative
    Then I do not see Name or Submitted On "Name" is displayed on form under Authorized Official Name or Authorized Representative

    Examples:
      | User  |
      | ADMIN |
       # | PM    |

  @208679 @208680 @208671 @208670 @wip
  Scenario Outline: All forms- Admin- Config- Verify in View Submitted on under Authorized Representative should get populated UI
  All forms- PM- UI- Verify in View Name under Authorized Representative should get populated UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I save the field labeled "Submitted On:" as "SUBMITTEDON"
    And I save the field labeled "Name" as "NAME"
    Then I see Name or Submitted On "{SavedValue:SUBMITTEDON}" is displayed on form under Authorized Official Name or Authorized Representative
    Then I see Name or Submitted On "{SavedValue:NAME}" is displayed on form under Authorized Official Name or Authorized Representative

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @208649 @208650 @wip
  Scenario Outline: All forms- Admin- Config- Verify when we hit ‘Save’ button, if data is missing in one or more fields which  are required to save error message should pop-up
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon in flex table for first draft record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I clear the value from field "fieldQuestion1__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details :
      | 1a. Describe the activities and/or services to be provided. (10 points) is required to save. |

    Examples:
      | User  |
      | ADMIN |
       # | PM    |