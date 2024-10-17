@Forms-PATCHComponent @regression-PATCH @Forms @vrush-module
Business Need: Forms Scenarios flextable UI,Forms Interface
  Test all SendEmail component based scenarios
  As a configuration manager I make different configurational changes in Forms component and will validate them.

  @206305 @206306 @wip
  Scenario Outline: All forms- Admin- Config- Verify forms displays under All forms page block
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    Then I softly see "All Forms " page block displayed

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206308p @206309 @wip
  Scenario Outline: All forms- Admin- Config- Verify Actions like Preview, view, edit are available
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Files" sub tab
    Then I softly can see row level action button "Preview" against "Program Application Form" in flex table with id "---program:-:allFormsTableId---"
    Then I softly can see row level action button "View" against "Program Application Form" in flex table with id "---program:-:allFormsTableId---"

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @208996 @208997 @382041 @382042 @SanityPATCH  @SanityPATCHForms @wip
  Scenario Outline: All Forms - Admin- Config- Verify we can download form as PDF
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    When I click on "Menu" in the page details
    Then I see "Download as PDF" options is displayed
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Program Specific Application Form" on page "1" of "govgrants" pdf file

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206307 @206310
  Scenario: All forms- SPI- UI- Verify forms displays under All forms page block
  All forms- SPI- UI- Verify Actions like Preview, view, edit are available
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    Then I softly see "All Forms " page block displayed
    Then I softly can see row level action button "Preview" against "Program Application Form" in flex table with id "---program:-:allFormsTableId---"
    Then I softly can see row level action button "View" against "Program Application Form" in flex table with id "---program:-:allFormsTableId---"
    Then I softly can see row level action button "Edit" against "Program Application Form" in flex table with id "---program:-:allFormsTableId---"

  @206338p @206339 @208662 @208661 @206879 @206880 @wip
  Scenario Outline: All forms- Admin- Config- Verify in View Form ID should get populated UI,UI- Verify in View Form name should get populated UI
  All forms- Admin- Config- Verify when we select ‘View’ action, form should not be editable
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "toggleFlexTableFormEnhancedTable" in Forms
    Then I see Form Id "FN-03525" is displayed on form layout
    #208662 #208661
    Then I see Form Name "Program Specific Application form" is displayed on form layout
     #206879 #206880
    Then I softly see field "fieldTEXTAREAQuestion1__c" is not editable
    Then I softly see field "fieldTEXTAREAQuestion2__c" is not editable
    Then I softly see field "fieldTEXTAREAQuestion3__c" is not editable
    And I click on "Back" in the page details
    And I pause execution for "4" seconds
    And I click on "View" icon for "Standard Assurances Form" inside flex table with id "toggleFlexTableFormEnhancedTable" in Forms
    Then I see Form Id "FN-03526" is displayed on form layout
    #208661 #208662
    Then I see Form Name "Standard Assurances Form" is displayed on form layout
    #206879
    Then I softly see field "fieldAppplicationSubmitted__c" is not editable
    Then I softly see field "fieldSubmittedOnForm__c" is not editable

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206340 @208663 @206881
  Scenario: All forms- SPI- UI- Verify in View Form ID should get populated UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I see Form Id "FN-03537" is displayed on form layout
    #208663
    Then I see Form Name "Program Specific Application form" is displayed on form layout
    #206881
    Then I softly see field "fieldTEXTAREAQuestion1__c" is not editable
    Then I softly see field "fieldTEXTAREAQuestion2__c" is not editable
    Then I softly see field "fieldTEXTAREAQuestion3__c" is not editable
    And I click on "Back" in the page details
    And I pause execution for "4" seconds
    And I click on "View" icon for "Standard Assurances Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I see Form Id "FN-01314" is displayed on form layout
    #208663
    Then I see Form Name "Standard Assurances Form" is displayed on form layout
    #206880
    Then I softly see field "fieldAppplicationSubmitted__c" is not editable
    Then I softly see field "fieldSubmittedOnForm__c" is not editable

  @206341 @206342 @208664 @208665 @wip
  Scenario Outline: All forms- Admin- Config- Verify in Edit Form ID should get populated UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I see Form Id "FN-01341" is displayed on form layout
    #208664 #208665
    Then I see Form Name "Program Specific Application form" is displayed on form layout
    And I click on "Back" in the page details
    And I pause execution for "4" seconds
    And I click on "Edit" button for "Standard Assurances Form" inside table id "---program:-:AllFormsTableId---"
    Then I see Form Id "FN-01342" is displayed on form layout
    #208664 @208665
    Then I see Form Name "Standard Assurances Form" is displayed on form layout

    Examples:
      | User  |
      | ADMIN |
       # | PM    |

  @206343p @208666
  Scenario: All forms- SPI- UI- Verify in Edit Form ID should get populated UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I see Form Id "FN-03527" is displayed on form layout
    #208666
    Then I see Form Name "Program Specific Application form" is displayed on form layout
    And I click on "Save" in the page details
    And I pause execution for "5" seconds
    And I click on "Back" in the page details
    And I pause execution for "4" seconds
#    And I click on "Edit" button for "Standard Assurances Form" inside table id "---program:-:AllFormsTableId---"
    And I click on "Edit" button for "Standard Assurances Form" inside table id "---program:-:AllFormsTableId---"
    Then I see Form Id "FN-03528" is displayed on form layout
    #208666
    Then I see Form Name "Standard Assurances Form" is displayed on form layout

  @206344 @206345 @206347 @206348 @wip
  Scenario Outline: All forms- Admin- Config- Verify all forms displays under dropdown
  All forms- Admin- Config- Verify we can select forms from dropdown
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I softly see dropdown with selected value as "Program Application Form" at form layout
    When I select "Standard Assurances Form" from dropdown at forms
    Then I softly see dropdown with selected value as "Standard Assurances Form" at form layout

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206346 @206349
  Scenario: All forms- SPI- UI- Verify all forms displays under dropdown
  All forms- SPI- UI- Verify we can select forms from dropdown
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I softly see dropdown with selected value as "Program Application Form" at form layout
    When I select "Standard Assurances Form" from dropdown at forms
    Then I softly see dropdown with selected value as "Standard Assurances Form" at form layout

  @206845 @206846 @wip
  Scenario Outline: All forms- Admin- Config- Verify if we shuffle through forms from dropdown, we are getting confirmation message in Edit Layout
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I softly see dropdown with selected value as "Program Application Form" at form layout
    When I select "Standard Assurances Form" from dropdown at forms
    Then I see confirmation box with message "Warning:If you Navigate away from this form without saving,your changes will be lost." is displayed

    Examples:
      | User  |
      | ADMIN |
       # | PM    |

  @206847
  Scenario: All forms- SPI- UI- Verify if we shuffle through forms from dropdown, we are getting confirmation message, in edit form layout.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I softly see dropdown with selected value as "Program Application Form" at form layout
    When I select "Standard Assurances Form" from dropdown at forms
    Then I see confirmation box with message "Warning:If you Navigate away from this form without saving,your changes will be lost." is displayed

  @206848 @206849 @wip
  Scenario Outline: All forms- Admin- Config- Verify In "Edit" mode, while we are shuffling through forms, if we hit ‘Cancel’ button on confirmation message modal we should not redirect to new form
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I softly see dropdown with selected value as "Program Application Form" at form layout
    When I select "Standard Assurances Form" from dropdown at forms
    When I click alert button "Cancel"
    Then I softly see dropdown with selected value as "Program Application Form" at form layout

    Examples:
      | User  |
      | ADMIN |
       # | PM    |

  @206850
  Scenario: All forms- SPI- UI- Verify in "Edit" mode, while we are shuffling through forms, if we hit ‘Cancel’ button on confirmation message modal we should not redirect to new form
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I softly see dropdown with selected value as "Program Application Form" at form layout
    When I select "Standard Assurances Form" from dropdown at forms
    When I click alert button "Cancel"
    Then I softly see dropdown with selected value as "Program Application Form" at form layout

  @206851p @206852 @wip
  Scenario Outline:All forms- Admin- Config- Verify in "Edit" mode,  while we are shuffling through forms, if we hit ‘OK’ button we should redirect to new form
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I softly see dropdown with selected value as "Program Application Form" at form layout
    When I select "Standard Assurances Form" from dropdown at forms
    When I click alert button "OK"
    Then I softly see dropdown with selected value as "Standard Assurances Form" at form layout

    Examples:
      | User  |
      | ADMIN |
      #| PM    |

  @206853
  Scenario: All forms- SPI- UI- Verify, in edit mode, while we are shuffling through forms, if we hit ‘OK’ button we should redirect to new form
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I softly see dropdown with selected value as "Program Application Form" at form layout
    When I select "Standard Assurances Form" from dropdown at forms
    When I click alert button "OK"
    Then I softly see dropdown with selected value as "Standard Assurances Form" at form layout

  @206854p @206855 @206862 @206861 @382014 @382015 @SanityPATCH  @SanityPATCHForms @wip
  Scenario Outline: All forms- Admin- Config- Verify when we hit ‘Save’ button success message should pop-up
  All forms- PM- UI- Verify when we select Edit action, form should be open in edit mode
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
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

  @206856 @206863 @382018 @SanityPATCH  @SanityPATCHForms
  Scenario: All forms- SPI- UI- Verify when we hit ‘Save’ button success message should pop-up
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    #206863
    Then I see page title "Applications: Program Specific Application form Edit ~ Grants Portal"
    And I click on "Save" in the page details
    Then I see the following message in the page details :
      | Form saved successfully. |

  @208998 @382044 @SanityPATCH  @SanityPATCHForms
  Scenario: All Forms - SPI- UI- Verify we can download form as PDF
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    When I click on "Menu" in the page details
    Then I see "Download as PDF" options is displayed
    And I select "Download As PDF" from dropdown
    And I download the file
    Then I see "Program Specific Application form" on page "1" of "govgrants" pdf file

  @208803 @208804 @wip
  Scenario Outline: All Forms - Admin- Config- Verify when we hover on (i) icon Help text should be displayed
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Standard Assurances Form" inside flex table with id "---program:-:allFormsTableId---"
    When I hovering mouse on help text icon inside "Standard Assurances Form"
    Then I see "Name that shows up on the User interface this is done because the Application and Pre-Application are using the same Templates and layouts and the Forms that show up on the Forms tab is currently showing up the names" shown as help text
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @208805
  Scenario: All Forms - SPI- UI- Verify when we hover on (i) icon Help text should be displayed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Standard Assurances Form" inside flex table with id "---program:-:allFormsTableId---"
    When I hovering mouse on help text icon inside "Standard Assurances Form"
    Then I see "Name that shows up on the User interface this is done because the Application and Pre-Application are using the same Templates and layouts and the Forms that show up on the Forms tab is currently showing up the names" shown as help text

  @208658 @208659 @wip
  Scenario Outline: All forms- Admin- Config- Verify in preview Form name should not populate on UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Preview" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I do not see Form Name "Program Application Form" is displayed on form layout
    And I switch to parent tab
    And I pause execution for "4" seconds
    And I click on "Preview" button for "Standard Assurances Form" inside table id "---program:-:AllFormsTableId---"
    Then I do not see Form Name "Standard Assurances Form" is displayed on form layout
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @208660
  Scenario: All forms- SPI- UI- Verify in preview Form name should not populate on UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Preview" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I do not see Form Name "Program Application Form" is displayed on form layout
    And I switch to parent tab
    And I pause execution for "4" seconds
    And I click on "Preview" button for "Standard Assurances Form" inside table id "---program:-:AllFormsTableId---"
    Then I do not see Form Name "Standard Assurances Form" is displayed on form layout

  @206336 @206335 @wip
  Scenario Outline: All forms- PM- UI- Verify in preview Form ID should not populate on UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Preview" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I do not see Form Id "FN-01341" is displayed on form layout
    And I switch to parent tab
    And I pause execution for "4" seconds
    And I click on "Preview" button for "Standard Assurances Form" inside table id "---program:-:AllFormsTableId---"
    Then I do not see Form Id "FN-01342" is displayed on form layout

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206337
  Scenario:All forms- SPI- UI- Verify in preview Form ID should not populate on UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Preview" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I do not see Form Id "FN-01342" is displayed on form layout
    And I switch to parent tab
    And I pause execution for "4" seconds
    And I click on "Preview" button for "Standard Assurances Form" inside table id "---program:-:AllFormsTableId---"
    Then I do not see Form Id "FN-01343" is displayed on form layout

  @206857 @206858 @206332 @206333 @wip
  Scenario Outline: All forms- Admin- Config- Verify the success message will be automatically closed after the set interval of time out
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I click on "Save" in the page details
    And I pause execution for "30" seconds
    Then I cannot see the following message in the page details :
      | Form saved successfully. |

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206859 @206334
  Scenario:All forms- SPI- UI- Verify the success message will be automatically closed after the set interval of time out
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I click on "Save" in the page details
    And I pause execution for "30" seconds
    Then I cannot see the following message in the page details :
      | Form saved successfully. |

  @208652 @208653 @wip
  Scenario Outline: All forms- Admin- Config- Verify fields which are required for save denoted with (*)
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I see asterisk mark at "1a. Describe the activities and/or services to be provided. (10 points)" field

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @208654
  Scenario: All forms- SPI- UI- Verify fields which are required for save denoted with (*)
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I see asterisk mark at "1a. Describe the activities and/or services to be provided. (10 points)" field

  @208655 @208656 @wip
  Scenario Outline: All forms- Admin- Config- Verify fields which are required for save ‘This field is required’ line should display on form
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I clear the value from field "fieldQuestion1__c"
    And I click on "Save" in the page details
    Then I see error message contains text "This field is required"

    Examples:
      | User  |
      | ADMIN |
       # | PM    |

  @208657
  Scenario:All forms- SPI- UI- Verify fields which are required for save ‘This field is required’ line should display on form
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I clear the value from field "fieldQuestion1__c"
    And I click on "Save" in the page details
    Then I see error message contains text "This field is required"

  @206870 @206871 @382030 @382032 @SanityPATCH  @SanityPATCHForms @wip
  Scenario Outline: All forms- Admin- Config- Verify if we hit ‘Yes’ button on confirmation message modal, in edit mode, form should open in view mode
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
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

  @206872 @382033 @SanityPATCH  @SanityPATCHForms
  Scenario: All forms- SPI- UI- Verify if we hit ‘Yes’ button on confirmation message modal, in edit mode, and opened into view mode.
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I see "Cancel" button is displayed
    Then I see "Save" button is displayed
    And I click on "Cancel" in the page details
    When I click alert button "Yes"
    Then I see page title "Applications: Program Specific Application form View ~ Grants Portal"

  @206873p @206874 @382025 @382026 @SanityPATCH  @SanityPATCHForms @wip
  Scenario Outline: All forms- Admin- Config- Verify after saving changes when we hit ‘New Validate’ button, if data is missing in one or more fields that are required to submit error message should pop-up
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I see "Back" button is displayed
    Then I see "Validate" button is displayed
    And I click on "New Validate" in the page details
    Then I see the following message in the page details :
      | Form cannot be validated because data is missing in one or more fields that are required to submit. To view the fields that are required to submit, click the Edit button. |

    Examples:
      | User  |
      | ADMIN |
#      | PM    |

  @206875 @382028 @SanityPATCH  @SanityPATCHForms
  Scenario: All forms- SPI- UI- Verify after saving changes when we hit ‘New Validate’ button, if data is missing in one or more fields that are required to submit error message should pop-up
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    #382028
    Then I see "Back" button is displayed
    Then I see "Edit" button is displayed
    Then I see "New Validate" button is displayed
    Then I see "Validate" button is displayed
    And I click on "New Validate" in the page details
    Then I see the following message in the page details :
      | Form cannot be validated because data is missing in one or more fields that are required to submit. To view the fields that are required to submit, click the Edit button. |

  @206876 @206877 @wip
  Scenario Outline: All forms- Admin- Config- Verify after saving changes when we hit ‘New Validate’ button, if all required fields are filled success message should pop-up
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    When I perform quick search for "Test Application by Tejashree"
    When I click on "View" icon for "Test Application by Tejashree" inside table
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I click on "New Validate" in the page details
    Then I see the following message in the page details :
      | Form Validated Successfully. |

    Examples:
      | User  |
      | ADMIN |
       # | PM    |

  @206878
  Scenario: All forms- SPI- UI- Verify after saving changes when we hit ‘New Validate’ button, if all required fields are filled success message should pop-up
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I click on "Save" in the page details
    And I click on "New Validate" in the page details
    Then I see the following message in the page details :
      | Form Validated Successfully. |

  @208649 @208650 @wip
  Scenario Outline: All forms- Admin- Config- Verify when we hit ‘Save’ button, if data is missing in one or more fields which  are required to save error message should pop-up
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I clear the value from field "fieldQuestion1__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details :
      | 1a. Describe the activities and/or services to be provided. (10 points) is required to save. |

    Examples:
      | User  |
      | ADMIN |
       # | PM    |

  @208651
  Scenario: All forms- SPI- UI- Verify when we hit ‘Save’ button, if data is missing in one or more fields which  are required to save error message should pop-up
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I clear the value from field "fieldQuestion1__c"
    And I click on "Save" in the page details
    Then I see the following message in the page details :
      | 1a. Describe the activities and/or services to be provided. (10 points) is required to save. |

  @208676 @208677 @208667 @208668 @wip
  Scenario Outline: All forms- Admin- Config- Verify in preview Name under Authorized Representative should not populate on UI
  All forms- Admin- Config- Verify in preview Submitted on under Authorized Representative should not populate on UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Preview" button for "Standard Assurances Form" inside table id "---program:-:AllFormsTableId---"
    Then I do not see Name or Submitted On "Submitted On:" is displayed on form under Authorized Official Name or Authorized Representative
    Then I do not see Name or Submitted On "Name" is displayed on form under Authorized Official Name or Authorized Representative

    Examples:
      | User  |
      | ADMIN |
       # | PM    |

  @208678 @208669
  Scenario: All forms- SPI- UI- Verify in preview Submitted on under Authorized Representative should not populate on UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Preview" button for "Standard Assurances Form" inside table id "---program:-:AllFormsTableId---"
    Then I do not see Name or Submitted On "Submitted On:" is displayed on form under Authorized Official Name or Authorized Representative
    Then I do not see Name or Submitted On "Name" is displayed on form under Authorized Official Name or Authorized Representative

  @208679 @208680 @208671 @208670 @wip
  Scenario Outline: All forms- Admin- Config- Verify in View Submitted on under Authorized Representative should get populated UI
  All forms- PM- UI- Verify in View Name under Authorized Representative should get populated UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Standard Assurances Form" inside flex table with id "---program:-:allFormsTableId---"
    And I save the field labeled "Submitted On:" as "SUBMITTEDON"
    And I save the field labeled "Name" as "NAME"
    Then I see Name or Submitted On "{SavedValue:SUBMITTEDON}" is displayed on form under Authorized Official Name or Authorized Representative
    Then I see Name or Submitted On "{SavedValue:NAME}" is displayed on form under Authorized Official Name or Authorized Representative

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @208681 @208672
  Scenario: All forms- SPI- UI- Verify in View Submitted on under Authorized Representative should get populated UI
  All forms- SPI- UI- Verify in View Name under Authorized Representative should get populated UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Standard Assurances Form" inside flex table with id "---program:-:allFormsTableId---"
    And I save the field labeled "Submitted On:" as "SUBMITTEDON"
    And I save the field labeled "Name" as "NAME"
    Then I see Name or Submitted On "{SavedValue:SUBMITTEDON}" is displayed on form under Authorized Official Name or Authorized Representative
    Then I see Name or Submitted On "{SavedValue:NAME}" is displayed on form under Authorized Official Name or Authorized Representative

  @208682 @208683 @208673 @208674 @wip
  Scenario Outline: All forms- Admin- Config- Verify in Edit Submitted on under Authorized Representative should get populated UI
  All forms- PM- UI- Verify in Edit Name under Authorized Representative should get populated UI
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" button for "Standard Assurances Form" inside table id "---program:-:AllFormsTableId---"
    And I save the field labeled "Submitted On:" as "SUBMITTEDON"
    And I save the field labeled "Name" as "NAME"
    Then I see Name or Submitted On "{SavedValue:SUBMITTEDON}" is displayed on form under Authorized Official Name or Authorized Representative
    Then I see Name or Submitted On "{SavedValue:NAME}" is displayed on form under Authorized Official Name or Authorized Representative

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @208684p @208675
  Scenario: All forms- SPI- UI- Verify in Edit Submitted on under Authorized Representative should get populated UI
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Standard Assurances Form" inside flex table with id "FormEnhancedTableFlexToggle" in Forms
    Then I see Name or Submitted On "Automation SPI" is displayed on form under Authorized Official Name or Authorized Representative
    Then I see Name or Submitted On "04/02/2024 5:00 PM" is displayed on form under Authorized Official Name or Authorized Representative

  @206318p @206319 @206324 @206325 @206321 @206322 @206327 @206328 @wip
  Scenario Outline:Last modified- Admin- Config- Verify Last modified by name is captured
  Last modified- Admin- Config- Verify Last modified Date and time is captured
  Last modified- Admin- Config- Verify Last modified by name must be updated if form is modified by another user
  Last modified- Admin- Config- Verify Last modified Date and time must be updated if form is modified
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    When I perform quick search for "New Application For Testing Only"
    When I click on "View" icon for "New Application For Testing Only" inside table
    When I navigate to "Overview" sub tab
    And I save the field labeled "Last Modified By" as "LastModifiedBy"
    And I save the field labeled "Last Modified Date" as "LastModifiedDate"
    Then I softly see field "{SavedValue:LastModifiedDate}" inside page block
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Standard Assurances Form" inside flex table with id "toggleFlexTableFormEnhancedTable" in Forms
    Then I see Name or Submitted On "{SavedValue:LastModifiedBy}" is displayed on form under Authorized Official Name or Authorized Representative
    Then I see Name or Submitted On "04/02/2024 5:00 PM" is displayed on form under Authorized Official Name or Authorized Representative
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206320 @206323 @206326 @206329
  Scenario: Last modified- SPI- UI- Verify Last modified by name is captured
  Last modified -SPI- UI- Verify Last modified Date and time is captured
  Last modified -SPI -UI- Verify Last modified by name must be updated if form is modified by another user
  Last modified - UI- Verify Last modified Date and time must be updated if form is modified
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Overview" sub tab
    And I save the field labeled "Created By" as "CREATEDBY"
    Then I softly see field "{SavedValue:CREATEDBY}" inside page block
    When I navigate to "Files" sub tab
    And I click on "Edit" button for "Standard Assurances Form" inside table id "---program:-:AllFormsTableId---"
    And I save the field labeled "Submitted On:" as "LASTMODIFIEDDATEANDTIME"
    And I save the field labeled "Name" as "LASTMODIFIEDBY"
    And I click on "Save" in the page details
    And I click on "Back" in the page details
    And I pause execution for "5" seconds
    Then I see value "{SavedValue:LASTMODIFIEDDATEANDTIME}" for title "Last Modified Date" against the value "Standard Assurances Form" inside table "---program:-:allFormsTableId---"
    Then I see value "{SavedValue:LASTMODIFIEDBY}" for title "Last Modified By" against the value "Standard Assurances Form" inside table "---program:-:allFormsTableId---"

  @206882 @206883 @wip
  Scenario Outline: All forms- Admin- Config- Verify if we hit ‘Back’ button, on View mode form we should redirect back to File tab
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I click on "Back" in the page details
    Then I softly see "All Forms " page block displayed
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206884
  Scenario: All forms- SPI- UI- Verify if we hit ‘Back’ button, on View mode form we should redirect back to File tab
  Last modified - UI- Verify Last modified Date and time must be updated if form is modified
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Standard Assurances Form" inside flex table with id "---program:-:allFormsTableId---"
    And I click on "Back" in the page details
    Then I softly see "All Forms " page block displayed

  @206864 @382020 @382021 @SanityPATCH  @SanityPATCHForms @wip
  Scenario Outline: All forms- Admin- Config- Verify if we hit ‘Cancel’ button, on edit mode form confirmation message should open
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I click on "Cancel" in the page details
    Then I softly see confirmation box with body "Are you sure you want to cancel?" is displayed
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206866 @382022 @SanityPATCH  @SanityPATCHForms
  Scenario: All forms- SPI- UI- Verify if we hit ‘Cancel’ button, on edit mode form confirmation message modal should open
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" button for "Standard Assurances Form" inside table id "---program:-:AllFormsTableId---"
    And I click on "Cancel" in the page details
    Then I softly see confirmation box with body "Are you sure you want to cancel?" is displayed

  @206867 @206868 @wip
  Scenario Outline:All forms- Admin- Config- Verify if we hit ‘No’ button on confirmation message modal, form should not get closed
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I click on "Cancel" in the page details
    When I click alert button "No"
    Then I see page title "Applications: Program Specific Application form Edit ~ As a Grantor"
    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @206869
  Scenario: All forms- SPI- UI- Verify if we hit ‘No’ button on confirmation message modal, form should not get closed
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" button for "Standard Assurances Form" inside table id "---program:-:AllFormsTableId---"
    And I click on "Cancel" in the page details
    When I click alert button "No"
    Then I see page title "Applications: Standard Assurances Form View ~ Grants Portal"

  @test @112347 @verifyByClickAtCancelButtonAtStandardAssuranceFormLayoutItShouldRedirectToApplicationDetailPageByPMUser @wip
  Scenario:validate that by click on standard assurance form layout, it is re-directed to application detail page by PM user
    When I login to "As a Grantor" app as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    When I perform quick search for "Application Program For Announcement Testing"
    When I click on "View" icon for "Application Program For Announcement Testing" inside table
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

  @test @112348 @verifyByClickAtCancelButtonAtStandardAssuranceFormLayoutItShouldRedirectToApplicationDetailPageBySPIUser
  Scenario:validate that by click on standard assurance form layout, it is re-directed to application detail page by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    When I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "FormEnhancedTable"
    When I click on "Cancel" in the page details
    Then I see "FN-01389" shown as over view header

  @381941 @381942 @SanityPATCH  @SanityPATCHForms @wip
  Scenario Outline:
  |Sanity TC - Admin - To verify that all fields displayed in a enhanced form table, which have been added in display fields configuration|
  |Sanity TC - PM - To verify that all fields displayed in a enhanced form table, which have been added in display fields configuration|
    When I login to "As a Grantor" app as "<Users>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
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

  @381964p @SanityPATCH  @SanityPATCHForms
  Scenario: Sanity TC - SPI - To verify that all fields displayed in a enhanced form table, which have been added in display fields configuration
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    Then I see "Form Name" shown inside flex table with id "---program:-:AllFormsTableId---"
    Then I see "Mandatory" shown inside flex table with id "---program:-:AllFormsTableId---"
    Then I see "Percentage" shown inside flex table with id "---program:-:AllFormsTableId---"
    Then I see "Last Modified By" shown inside flex table with id "---program:-:AllFormsTableId---"
    Then I see "Last Modified Date" shown inside flex table with id "---program:-:AllFormsTableId---"

  @381967 @381968 @SanityPATCH  @SanityPATCHForms @wip
  Scenario Outline:
  |Sanity TC - Admin - To verify that user is able to navigate to Edit layout of Enhanced form, on clicking on Edit action in table|
  |Sanity TC - PM - To verify that user is able to navigate to Edit layout of Enhanced form, on clicking on Edit action in table|
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" button for "Standard Assurances Form" inside table id "---program:-:AllFormsTableId---"
    Then I see title of current page is "Applications: Standard Assurances Form Edit ~ As a Grantor"
    Examples:
      | User  |
      | Admin |
      | PM    |

  @381969p @SanityPATCH  @SanityPATCHForms
  Scenario: Sanity TC - SPI - To verify that user is able to navigate to Edit layout of Enhanced form, on clicking on Edit action in table
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" button for "Standard Assurances Form" inside table id "---program:-:allFormsTableId---"
    Then I see title of current page is "Applications: Standard Assurances Form Edit ~ Grants Portal"

  @381970 @SanityPATCH  @SanityPATCHForms @wip
  Scenario Outline: Sanity TC - Admin - To verify that user is able to navigate to View layout of Enhanced form, on clicking on View action in table
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Standard Assurances Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I see title of current page is "Applications: Standard Assurances Form View ~ As a Grantor"
    Examples:
      | User  |
      | Admin |
      | PM    |

  @381972 @SanityPATCH  @SanityPATCHForms
  Scenario: Sanity TC - SPI - To verify that user is able to navigate to View layout of Enhanced form, on clicking on View action in table
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" button for "Standard Assurances Form" inside table id "---program:-:AllFormsTableId---"
    Then I see title of current page is "Applications: Standard Assurances Form View ~ Grants Portal"

  @381987 @381990 @381982 @381983 @SanityPATCH  @SanityPATCHForms @wip
  Scenario Outline:Sanity
  |TC - Admin - To verify that user is able to see all page blocks in tab on Enhanced form as added in config|
  |Sanity TC - PM - To verify that user is able to see all page blocks in tab on Enhanced form as added in config|
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
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

  @381994 @381986 @SanityPATCH  @SanityPATCHForms
  Scenario: Sanity TC - SPI - To verify that user is able to see all page blocks in tab on Enhanced form as added in config
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    Then I see "Project Characteristics" page block displayed
    Then I see "Need for Project" page block displayed
    Then I see "Significance" page block displayed
    Then I see "Project Goals" page block displayed
    Then I see "Organization Capacity" page block displayed

  @382001 @382003 @SanityPATCH  @SanityPATCHForms @wip
  Scenario Outline: Sanity TC - Admin - To verify that user is able to see all fields in page blocks on Enhanced form as added in config
    When I login to "As a Grantor" app as "<User>" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "Edit" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
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

  @382004
  Scenario:Sanity TC - SPI - To verify that user is able to see all fields in page blocks on Enhanced form as added in config
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
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

  @382035 @382036 @SanityPATCH  @SanityPATCHForms @wip
  Scenario Outline: Sanity TC - Admin - To verify that user is able to navigate to Edit layout of enhanced form, on clicking Edit action on View layout
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I click on "Edit" in the page details
    Then I see page title "Applications: Program Specific Application form Edit ~ As a Grantor"

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @382037 @SanityPATCH  @SanityPATCHForms
  Scenario: Sanity TC - SPI - To verify that user is able to navigate to Edit layout of enhanced form, on clicking Edit action on View layout
  Last modified - UI- Verify Last modified Date and time must be updated if form is modified
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I click on "Edit" in the page details
    Then I see page title "Applications: Program Specific Application form View ~ Grants Portal"

  @382038 @382039 @SanityPATCH  @SanityPATCHForms @wip
  Scenario Outline: Sanity TC - Admin - To verify that user is able to validate enhanced form, on clicking on Validate action on View layout
    When I login to "As a Grantor" app as "<User>" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    And I click on "View" icon for "Created" inside flex table with id "---program:-:toggleFlexTablepopupflextableTableId---" without waiting for record
    When I navigate to "Files" sub tab
    And I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I click on "Validate" in the page details
    Then I see the following message in the page details :
      | Form validated successfully. |

    Examples:
      | User  |
      | ADMIN |
      | PM    |

  @382040p @SanityPATCH  @SanityPATCHForms
  Scenario: Sanity TC - SPI - To verify that user is able to validate enhanced form, on clicking on Validate action on View layout
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI3" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - Draft"
    When I perform quick search for "Program For Application"
    When I click on "Edit" icon for "Program For Application" inside table
    Given I enter "ProgramApplicationForm_v" values from "Program_Field_Values_PATCH_org.xlsx"
    And I click on "Save" in the page details
    When I navigate to "Files" sub tab
    When I click on "View" icon for "Program Application Form" inside flex table with id "---program:-:allFormsTableId---"
    And I click on "Validate" in the page details
    Then I see the following message in the page details :
      | Form validated successfully. |
