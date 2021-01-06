@enhancedForms-component @regression-test8
Business Need: enhanced Forms Component Scenarios
  Test all enhanced forms component based scenarios
  As a configuration manager i make different configurational changes in enhanced forms component and will validate them.

  @112347 @verifyByClickAtCancelButtonAtStandardAssuranceFormLayoutItShouldRedirectToApplicationDetailPageByPMUser
  Scenario:validate that by click on standard assurance form layout, it is re-directed to application detail page by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "FormEnhancedTable"
    When I click on "Cancel" in the page details
    Then I see "Application" shown as over view header

  @112350 @verifyByClickAtCancelButtonAtStandardAssuranceFormLayoutItShouldRedirectToApplicationDetailPageByAdminUser
  Scenario:validate that by click on standard assurance form layout, it is re-directed to application detail page by login as admin user
    When I login as "Admin" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithConvetedToAwardStatus}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "FormEnhancedTable"
    When I click on "Cancel" in the page details
    Then I see "Application" shown as over view header

  @112348 @verifyByClickAtCancelButtonAtStandardAssuranceFormLayoutItShouldRedirectToApplicationDetailPageBySPIUser
  Scenario:validate that by click on standard assurance form layout, it is re-directed to application detail page by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}"
    When I click on "View" icon for "{Framework_recordUsed:ApplicationRecordWithCreatedStatus}" inside table
    When I navigate to "Attachments" sub tab
    When I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "FormEnhancedTable"
    When I click on "Cancel" in the page details
    Then I see "FN-00111" shown as over view header