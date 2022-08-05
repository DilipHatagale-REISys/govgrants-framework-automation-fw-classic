@vrushali @enhancedForms-component @regression-test8
Business Need: enhanced Forms Component Scenarios
  Test all enhanced forms component based scenarios
  As a configuration manager i make different configurational changes in enhanced forms component and will validate them.

  @test @112347 @verifyByClickAtCancelButtonAtStandardAssuranceFormLayoutItShouldRedirectToApplicationDetailPageByPMUser
  Scenario:validate that by click on standard assurance form layout, it is re-directed to application detail page by PM user
    When I login as "PM" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    When I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "FormEnhancedTable"
    When I click on "Cancel" in the page details
    Then I see "FN-01389" shown as over view header

  @test @112350 @verifyByClickAtCancelButtonAtStandardAssuranceFormLayoutItShouldRedirectToApplicationDetailPageByAdminUser
  Scenario:validate that by click on standard assurance form layout, it is re-directed to application detail page by login as admin user
    When I login as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    When I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "FormEnhancedTable"
    When I click on "Cancel" in the page details
    Then I see "FN-01389" shown as over view header

 @test @112348 @verifyByClickAtCancelButtonAtStandardAssuranceFormLayoutItShouldRedirectToApplicationDetailPageBySPIUser
  Scenario:validate that by click on standard assurance form layout, it is re-directed to application detail page by login as SPI user
    Given I am on "SUBPORTAL" portal
    When I login to "Grants Portal" app as "SPI" user
    And I navigate to "Applications" tab
    And I click toggle button to select "Applications - All"
    When I perform quick search for "Program For Application"
    When I click on "View" icon for "Program For Application" inside table
    When I navigate to "Files" sub tab
    When I click on "Edit" icon for "Standard Assurances Form" inside flex table with id "FormEnhancedTable"
    When I click on "Cancel" in the page details
    Then I see "FN-01389" shown as over view header