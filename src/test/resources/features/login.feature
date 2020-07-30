@login
Business Need: Login Scenarios
  Test all login based scenarios

  @validlogin @smoke
  Scenario Outline: User enters correct username and password to login and reaches homepage
    Given I enter my user "<username>"
    #And I enter my password "<password>"
    #When I login
    #Then I am on the homepage
    Examples:
      | username        | password   |
      | qaadmin@ut.test | test@12345 |

  @defaultstep @wip
  Scenario: one step for default configuration. To be remove once used anywhere
    Given I have default configuration for "Program" field "Status" as "Submitted for Approval" with filter "Automation Program -SA to C"