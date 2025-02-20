Feature: Verify Add Employee functionality

    Add Employee functionality Positive and nagative Tests

    # @smoke
    # Scenario: Verify Add Employee with Mandotory details
    #     Given User Launch the Application
    #     When User Enter Valid Username as "Admin"
    #     And  User enter password as "admin123"
    #     And  User clicks on login button
    #     Then User should be navigated to dashbaord page
    #     When user clicks on PIM menu
    #     And user clicks on Add employee sub menu
    #     And user enter firstname as "Prakash"
    #     And user enter lastname as "Bangaram"
    #     And user clicks on save button
    #     Then user should get success message


    @smoke
    Scenario Outline: Verify Add Employee with Mandotory details
        Given User Launch the Application
        When User Enter Valid Username as "Admin"
        And  User enter password as "admin123"
        And  User clicks on login button
        Then User should be navigated to dashbaord page
        When user clicks on PIM menu
        And user clicks on Add employee sub menu
        And user enter firstname as "<firstname>"
        And user enter lastname as "<lastname>"
        And user clicks on save button
        Then user should get success message
        Examples:
            | firstname | lastname |
            | Raju      | G        |
            | Deepu     | T        |

    @regression
    Scenario: Verify Error messages for Mandatory fileds
        Given User Launch the Application
        When User Enter Valid Username as "Admin"
        And  User enter password as "admin123"
        And  User clicks on login button
        Then User should be navigated to dashbaord page
        When user clicks on PIM menu
        And user clicks on Add employee sub menu
        And user clicks on save button
        Then user should see error message for firstname and lastname
