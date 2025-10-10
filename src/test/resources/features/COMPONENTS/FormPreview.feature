@regression @FormsPreview
Business Need: Forms Scenarios flextable UI,Forms Interface - User Story 508753
  As a configuration manager I make different configurational changes in Forms component and will validate them.

  @513784
  Scenario: Classic - SPI – Form – PDF generation for Form Preview - To verify that, Download as PDF action should be displayed under Menu of Form Preview Layout.
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---program:-:NotYetQualifiedTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---program:-:NotYetQualifiedTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    Then I softly see "All Forms " page block displayed
    And I click on "Preview" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    And I pause execution for "3" seconds
    When I switch to tab number "1"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    Then I see "Download As PDF" options is displayed

  @513786
  Scenario: Classic - SPI – Form – PDF generation for Form Preview - To verify that, when user clicks on Download as PDF under form layout then Form PDF should be downloaded/open in new window
    Given I have "default" configuration as below:
      | configurationCategory | fieldName       | fieldOrignalValue | filterId         |
      | Flex Table Action     | Where To Open ? | NewTab            | ApiGeneratedId:0 |
      | Flex Table Action     | Action Behavior | OpenURL           | ApiGeneratedId:1 |
    Given I setup test configuration as below:
      | configurationCategory | fieldName       | fieldNewValue | coreComponentField | coreCOmponentSubFieldName | coreComponentSubFieldValue |
      | Flex Table Action     | Where To Open ? | NewTab        | FormEnhancedTable  | Name                      | Preview                    |
      | Flex Table Action     | Action Behavior | OpenURL       | FormEnhancedTable  | Name                      | Preview                    |
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---program:-:NotYetQualifiedTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---program:-:NotYetQualifiedTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    Then I softly see "All Forms " page block displayed
    And I click on "Preview" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Then I see "Menu" icon is displayed on pagelayout
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    Then I see new tab is opened

  @513787 @513890
  Scenario: Classic - SPI – Form – PDF generation for Form Preview - To verify that, user should be able to see form content in Downloaded PDF
  |Classic - SPI – Form – PDF generation for Form Preview - To verify that, after refreshing the page, form content should be display correctly in Downloaded PDF under Menu of Form Preview Layout.|
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---program:-:NotYetQualifiedTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---program:-:NotYetQualifiedTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    When I navigate to "Files" sub tab
    Then I softly see "All Forms " page block displayed
    And I click on "Preview" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I softly see "Project Characteristics" on page "1" of "govgrants" pdf file
    Then I softly see "Need for Project" on page "1" of "govgrants" pdf file
    Then I softly see "Significance" on page "1" of "govgrants" pdf file
    Then I softly see "Project Goals" on page "1" of "govgrants" pdf file
    Then I softly see "Organization Capacity" on page "1" of "govgrants" pdf file
      #513890
    And I refresh the page
    Then I softly see "Project Characteristics" on page "1" of "govgrants" pdf file
    Then I softly see "Need for Project" on page "1" of "govgrants" pdf file
    Then I softly see "Significance" on page "1" of "govgrants" pdf file
    Then I softly see "Project Goals" on page "1" of "govgrants" pdf file
    Then I softly see "Organization Capacity" on page "1" of "govgrants" pdf file

  @513907
  Scenario Outline: Classic - Admin/PM – Form – PDF generation for Form Preview - To verify that, after refreshing the page, form content should be display correctly in Downloaded PDF under Menu of Form Preview Layout.
    Given I published "Competitive" type announcement having name "Automation Runtime Announcement Application" and properties "default"
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Opportunities" tab
    When I navigate to "Not Yet Qualified" content inside "Opportunities" subheader on left panel
    And I perform quick search for "{SavedValue:Automation Runtime Announcement Application}" in "---applicationIntake:-:activeOpportunitiesTableId---" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime Announcement Application}" inside flex table with id "---applicationIntake:-:activeOpportunitiesTableId---"
    When I click on "Qualify" in the page details
    When I click on "Create Application" in the page details
    And I click modal button "Save and Continue"
    And I pause execution for "3" seconds
    And I enter "Edition" values from "Application_Field_Values.xlsx"
    When I click on "Save" in the page details
    And I navigate to "Budget" sub tab
    Given I expand nested table containing column value "BP01"
    And I edit the following rows inline in flex table with id "---applicationIntake:-:budgetPeriodTableId---" by clicking "Edit" :
      | Category Name | Budget | Cash Match | Non-Cash Match | Other Leverage |
      | Construction  | 1000   | 100        | 100            | 100            |
    When I navigate to "Overview" sub tab
    When I click on "Edit" icon for "{SavedValue:SPI3 Username}" inside flex table with id "---applicationReview:-:flexGridAppContactTableId---"
    And I enter value "Checked" into field "IsKeyContact__c"
    And I click on top right button "Save" in flex table with id "---applicationReview:-:flexGridAppContactTableId---"
    When I navigate to "Proposal" sub tab
    When I edit the following rows inline in flex table with id "---applicationIntake:-:kpiTableId---" by clicking "Edit" :
      | EGMS ID                  | Target |
      | Automation Permanent KPI | 10     |
    And I navigate to "Files" sub tab
    And I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Given I enter "Form Fields 1" values from "Application_Field_Values.xlsx"
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    Given I enter "Form Fields 2" values from "Application_Field_Values.xlsx"
    And I click on "Save" in the page details
    Given I click on "Back" in the page details
    And I navigate to "Overview" sub tab
    And I edit the following rows inline in flex table with id "---applicationReview:-:flexGridAppContactTableId---" by clicking "Edit" :
      | Name                       | Project Role             | Is Key Contact |
      | {SavedValue:SPI3 Username} | Project Director/Manager | Checked        |
    When I click on "Submit Application" in the page details
    When I navigate to "Applications" tab
    And I navigate to "Applications" content inside "Applications" subheader on left panel
    When I click toggle button to select "Applications - Submitted"
    When I perform quick search for "<Application Name>" in "---applicationIntake:-:recipientApplications---" panel
    Then I softly see "<Application Name>" inside flex table with id "---applicationIntake:-:recipientApplications---"
    Given I re-login to "As a Grantor" app as "<User>" user on "INTERNAL" portal
    When I navigate to "Applications" tab
    And I navigate to "Applications" content inside "Applications" subheader on left panel
    When I click toggle button to select "Applications - All"
    When I click on "View" icon for "<Application Name>" inside table
    When I navigate to "Forms and Files" sub tab
    Then I softly see "All Forms " page block displayed
    And I click on "Preview" icon for "Program Application Form" inside flex table with id "---applicationIntake:-:allFormsTableId---"
    When I switch to tab number "1"
    When I click on "Menu" in the page details
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I softly see "Project Characteristics" on page "1" of "govgrants" pdf file
    Then I softly see "Need for Project" on page "1" of "govgrants" pdf file
    Then I softly see "Significance" on page "1" of "govgrants" pdf file
    Then I softly see "Project Goals" on page "1" of "govgrants" pdf file
    Then I softly see "Organization Capacity" on page "1" of "govgrants" pdf file
    And I refresh the page
    Then I softly see "Project Characteristics" on page "1" of "govgrants" pdf file
    Then I softly see "Need for Project" on page "1" of "govgrants" pdf file
    Then I softly see "Significance" on page "1" of "govgrants" pdf file
    Then I softly see "Project Goals" on page "1" of "govgrants" pdf file
    Then I softly see "Organization Capacity" on page "1" of "govgrants" pdf file

    Examples:
      | Application Name                                         | User |
      | {SavedValue:Automation Runtime Announcement Application} | PM  |

