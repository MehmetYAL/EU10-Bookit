@smoke
Feature: User Verification

#@wip
  Scenario: verify information about logged user
    Given I logged Bookit api using "blyst6@si.edu" and "barbabaslyst"
    When I get the current user information from api
    Then status code should be 200


  @db #  @wip
  Scenario: verify information about logged user from api and database
    Given I logged Bookit api using "blyst6@si.edu" and "barbabaslyst"
    When I get the current user information from api
    Then the information about current user from api and database should match

 # @db @ui
  Scenario: three point verification (UI,API,Database)
    Given user logs in using "emaynell8f@google.es" "besslebond"
    And  user is on the my self page
    Given I logged Bookit api using "emaynell8f@google.es" and "besslebond"
    When I get the current user information from api
    Then UI,API and Database user information must be match

  Scenario Outline: three point verification (UI,API,Database)
    Given user logs in using "<email>" "<password>"
    And  user is on the my self page
    Given I logged Bookit api using "<email>" and "<password>"
    When I get the current user information from api
    Then UI,API and Database user information must be match


    Examples:
      | email         | password     |
      | blyst6@si.edu | barbabaslyst |




#1.47