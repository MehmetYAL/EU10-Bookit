@smoke
Feature: User Verification

#@wip
  Scenario: verify information about logged user
    Given I logged Bookit api using "blyst6@si.edu" and "barbabaslyst"
    When I get the current user information from api
    Then status code should be 200


    #  @wip
  Scenario: verify information about logged user from api and database
    Given I logged Bookit api using "blyst6@si.edu" and "barbabaslyst"
    When I get the current user information from api
    Then the information about current user from api and database should match