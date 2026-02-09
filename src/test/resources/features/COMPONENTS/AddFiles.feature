@ComponentSanity @addfiles

Feature: Component Sanity Testing 1. Add Files
  In this feature file, we use the following tags for component-wise execution:@addfiles

  @550976
  Scenario: Classic: Add File: PM: To verify that "visibility options" should be visible for PM user only.
    Given I published "Competitive" type announcement having name "Automation Runtime FDM Announcement" and properties "NO_RISK_ASSESSMENT"
    When I initiated an application review for application "{SavedValue:Automation Runtime FDM Announcement}" on announcement "{SavedValue:Automation Runtime FDM Announcement}" with properties "default"
    And I created approved FDM on application "{SavedValue:Automation Runtime FDM Announcement}"
    When I login to "As a Grantor" app as "PM" user
    And I navigate to "Applications" tab
    When I navigate to "Applications" content inside "Applications" subheader on left panel
    And I click toggle button to select "Applications - All"
    When I perform quick search for "{SavedValue:Automation Runtime FDM Announcement}" in "toggleFlexTableApplicantGrantorApplications" panel
    When I click on "View" icon for "{SavedValue:Automation Runtime FDM Announcement}" inside table
    When I navigate to "Files" sub tab
    And I edit the following rows inline in flex table with id "---paymentRequest:-:budgetTableId---" by clicking "Edit" :
