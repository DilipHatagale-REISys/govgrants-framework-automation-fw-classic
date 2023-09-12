@CustomLookup-Component @regression-LWC @CustomLookupLWC
Business Need: Attachment Component Scenarios
  Test all CustomLookupLWC component based scenarios
  As a configuration manager i make different configurational changes in CustomLookupLWC component and will validate them.

  @236868 @Verify,QuicksearchissupportedforTextfield  @Vrushali @LWC-CustomLookupTestSuit
  Scenario:Verify, Quick search is supported for the Text field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    And I click on "checkbox" before the "Full Name" column
    And I perform LWC quick search "Automation"
    Then I see "Automation" in tableName "Contacts"

  @236867 @Verify,QuicksearchisupportedforNumberfield @Vrushali @LWC-CustomLookupTestSuit
  Scenario: Verify, Quick search is supported for the Number field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    And I click on "checkbox" before the "Full Name" column
    And I perform LWC quick search "1234"
    Then I see "1234" in tableName "Contacts"

  @236869 @Verify,Quicksearchissupportedforpicklistfield @Vrushali @LWC-CustomLookupTestSuit
  Scenario: Verify, Quick search is supported for the picklist field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    And I click on "checkbox" before the "Full Name" column
    And I perform LWC quick search "1234"
    Then I see "1234" in tableName "Contacts"

  @236870 @236872 @Quicksearchissupportedforcheckboxfield @Vrushali @LWC-CustomLookupTestSuit
  Scenario: Quick search is supported for the checkbox  field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    And I click on "checkbox" before the "Full Name" column
    And I perform LWC quick search "1234"
    Then I see "1234" in tableName "Contacts"

  @236871 @QuicksearchissupportedTextareafield @Vrushali @LWC-CustomLookupTestSuit
  Scenario: Quick search is supported for the Text area  field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    And I click on "checkbox" before the "Full Name" column
    And I perform LWC quick search "1234"
    Then I see "1234" in tableName "Contacts"

  @236873 @Quicksearchissupportedforphonefield @Vrushali @LWC-CustomLookupTestSuit
  Scenario: Quick search is supported for the phone  field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    And I click on "checkbox" before the "Full Name" column
    And I perform LWC quick search "1234"
    Then I see "1234" in tableName "Contacts"

  @236874 @QuicksearchissupportedfortheEmailfield @Vrushali @LWC-CustomLookupTestSuit
  Scenario: Quick search is supported for the Email  field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    And I click on "checkbox" before the "Full Name" column
    And I perform LWC quick search "1234"
    Then I see "1234" in tableName "Contacts"

  @236875 @QuicksearchissupportedfortheURLfield @Vrushali @LWC-CustomLookupTestSuit
  Scenario: Quick search is supported for the URL field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    And I click on "checkbox" before the "Full Name" column
    And I perform LWC quick search "1234"
    Then I see "1234" in tableName "Contacts"

  @236876 @QuicksearchissupportedfortheLookupfield @Vrushali @LWC-CustomLookupTestSuit
  Scenario: Quick search is supported for the Lookup field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    And I click on "checkbox" before the "Full Name" column
    And I perform LWC quick search "1234"

  @236877 @Quicksearchissupportedforthepercentfield @Vrushali @LWC-CustomLookupTestSuit
  Scenario: Quick search is supported for the percent  field
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    And I click on "checkbox" before the "Full Name" column
    And I perform LWC quick search "1234"

  @236878 @Partialkeywordissupportedinquicksearchbox
  Scenario: Partial keyword is supported in quick search box
    When I login to "As a Grantor" app as "ADMIN" user
    When I setup my app as "As a Grantor"
    And I navigate to "Planning" tab
    And I click toggle button to select "Internal Programs - Draft"
    When I perform quick search for "Automation Internal Program for Testing Purpose Only"
    When I click on "View" icon for "Automation Internal Program for Testing Purpose Only" inside table
    When I navigate to "Overview" sub tab
    And I click on top right button "Associate" in tableName "Contacts@1234567890!@#$%^&*()"
    And I click on "checkbox" before the "Full Name" column
    And I perform LWC quick search "1234"
