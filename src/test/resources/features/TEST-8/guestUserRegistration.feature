@vrushali @GuestUserRegistration-flow @regression-test8 @guestUserRegistration
Business Need: guest user registration flow based Scenarios
  Test all guest user registration flow based scenarios
  As a configuration manager i make different configurational changes in guest user registration and will validate them.

  @test @138504    @validateGuestUserIsAbleToOpenExternalUserPortal
  Scenario: validate guest user is able to open external user portal
    Given I am on "SUBPORTAL" portal
    Then I see external user registration page displayed

 @test @138527    @validateGuestUserIsAbleToOpenRegistrationPageUnderOrganizationSection
  Scenario: validate guest user is able to open registration page under Organization Section
    Given I am on "SUBPORTAL" portal
    And I click modal button "Register"
    And I expand table with header "Organization"
    And I click on "Begin Registration" button
 # @138527 validate that the legal disclaimer first page is displayed to guest user
    Then I softly see the text :
      | Legal Disclaimer 1 of 2 |
    And I click modal button "Agree"
 # @138527 validate that the legal disclaimer second page is displayed to guest user
    Then I softly see the text :
      | Legal Disclaimer 2 of 2 |
    And I click modal button "Agree"
 # @138527 validate that the 3 step registartion page is displayed to guest user
    Then I softly see the text :
      | Registration |
      | Step 1 of 3  |

  @test @138970    @validateGuestUserIsAbleToOpenCreateExternalRegistrationPageUnderOrganizationSection
  Scenario: validate guest user is able to open Create External Registration page under organization section
    Given I am on "SUBPORTAL" portal
    And I click modal button "Register"
    And I expand table with header "Organization"
    And I click on "Begin Registration" button
    When I click on "Agree" in the page details
    When I click on "Agree" in the page details
    When I enter value as "468792992" into "Employer Identification Number (EIN)" on old form
    When I enter value as "468792992" into "Data Universal Number System (DUNS) Number" on old form
    When I enter value as "1234" into "Vendor ID" on old form
    When I click on "Save and Continue" in the page details
    Then I see the header is "Create External Registration" in the page details

  @wip @138983    @validateGuestUserIsAbleToOpenCreateExternalRegistrationSecondPageUnderOrganizationSection
  Scenario: validate guest user is able to open second page of Create External Registration under organization section
    Given I am on "SUBPORTAL" portal
    And I click modal button "Register"
    And I expand table with header "Organization"
    And I click on "Begin Registration" button
    When I click on "Agree" in the page details
    When I click on "Agree" in the page details
    When I enter value as "468792992" into "Employer Identification Number (EIN)" on old form
    When I enter value as "468792992" into "Data Universal Number System (DUNS) Number" on old form
    When I enter value as "1234" into "Vendor ID" on old form
    When I click on "Save and Continue" in the page details
    And I navigate to "Organization Profile" sub tab
    And I enter "Organization_Information" values from "UserRegistrationOrganization.xlsx"
    And I enter "Organization_Address" values from "UserRegistrationOrganization.xlsx"
    And I enter "Payment_Address" values from "UserRegistrationOrganization.xlsx"
    When I click on "Save" in the page details
    Then I softly see "Organization Representatives:" page block displayed
    Then I softly see "Authorized Representative Information" page block displayed

  @wip @138985    @validateGuestUserIsAbleToOpenCaptchaPageUnderOrganizationSection
  Scenario: validate guest user is able to open captcha page under organization section
    Given I am on "SUBPORTAL" portal
    And I click modal button "Register"
    And I expand table with header "Organization"
    And I click on "Begin Registration" button
    When I click on "Agree" in the page details
    When I click on "Agree" in the page details
    When I enter value as "468792992" into "Employer Identification Number (EIN)" on old form
    When I enter value as "468792992" into "Data Universal Number System (DUNS) Number" on old form
    When I enter value as "1234" into "Vendor ID" on old form
    When I click on "Save and Continue" in the page details
    And I navigate to "Organization Profile" sub tab
    And I enter "Organization_Information" values from "UserRegistrationOrganization.xlsx"
    And I enter "Organization_Address" values from "UserRegistrationOrganization.xlsx"
    And I enter "Payment_Address" values from "UserRegistrationOrganization.xlsx"
    When I click on "Save" in the page details
    And I enter "Authorized_Representative_Info" values from "UserRegistrationOrganization.xlsx"
    When I click on "Save" in the page details
    Then I see the ReCaptcha input box

  @test @139176    @validateGuestUserIsAbleToOpenRegistrationPageUnderIndividualSection
  Scenario: validate guest user is able to open registration page under individual Section
    Given I begin "Individual" registration
 # @139176 validate that the legal disclaimer first page is displayed to guest user- individual section
    Then I softly see the text :
      | Legal Disclaimer 1 of 2 |
    And I click modal button "Agree"
 # @139176 validate that the legal disclaimer second page is displayed to guest user- individual section
    Then I softly see the text :
      | Legal Disclaimer 2 of 2 |
    And I click modal button "Agree"
 # @139176 validate that the 3 step registration page is displayed to guest user- individual section
    Then I softly see the text :
      | Registration |
      | Step 1 of 2  |

  @test @139178    @validateGuestUserIsAbleToOpenCreateExternalRegistrationPageUnderIndividualSection
  Scenario: validate guest user is able to open Create External Registration page under individual section
    Given I begin "Individual" registration
    When I click on "Agree" in the page details
    When I click on "Agree" in the page details
    When I enter value as "468792992" into "Social Security Number (SSN)" on old form
    When I enter value as "test@gmail.com" into "Email" on old form
    When I enter value as "1234" into "Vendor ID" on old form
    When I click on "Save and Continue" in the page details
    Then I see the header is "Create External Registration" in the page details

  @139179    @validateGuestUserIsAbleToOpenCreateExternalRegistrationPageUnderIndividualSection
  Scenario: validate guest user is able to open Create External Registration page under individual section
    Given I begin "Individual" registration
    When I click on "Agree" in the page details
    When I click on "Agree" in the page details
    When I enter value as "468792992" into "Social Security Number (SSN)" on old form
    When I enter value as "test@gmail.com" into "Email" on old form
    When I enter value as "1234" into "Vendor ID" on old form
    When I click on "Save and Continue" in the page details
    Then I see the header is "Create External Registration" in the page details

  @wip @139179    @validateGuestUserIsAbleToSeeCaptchaInputBox
  Scenario: validate guest user is able to see captcha input box
    Given I am on "SUBPORTAL" portal
    And I click modal button "Register"
    And I expand table with header "Organization"
    And I click on "Begin Registration" button
    When I click on "Agree" in the page details
    When I click on "Agree" in the page details
    When I enter value as "468792992" into "Employer Identification Number (EIN)" on old form
    When I enter value as "468792992" into "Data Universal Number System (DUNS) Number" on old form
    When I enter value as "1234" into "Vendor ID" on old form
    When I click on "Save and Continue" in the page details
    And I navigate to "Organization Profile" sub tab
    And I enter "Organization_Information" values from "UserRegistrationOrganization.xlsx"
    And I enter "Organization_Address" values from "UserRegistrationOrganization.xlsx"
    And I enter "Payment_Address" values from "UserRegistrationOrganization.xlsx"
    When I click on "Save" in the page details
    And I enter "Authorized_Representative_Info" values from "UserRegistrationOrganization.xlsx"
    When I click on "Save" in the page details
    Then I see the ReCaptcha input box