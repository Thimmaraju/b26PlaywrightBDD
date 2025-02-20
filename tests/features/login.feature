Feature: Verify Login functionality

    Login functionality Positive and nagative Tests

    Scenario: Verify Login with Valid Creds
        Given User Launch the Application
        When User Enter Valid Username as "Admin"
        And  User enter password as "admin123"
        And  User clicks on login button
        Then User should be navigated to dashbaord page

    Scenario: Verify Login with Valid Username and Invalid password
        Given User Launch the Application
        When User Enter Valid Username as "Admin"
        And  User enter password as "gkmkg"
        And  User clicks on login button
        Then User should get login error Message

    Scenario: Verify Login with invalid Username and valid password
        Given User Launch the Application
        When User Enter Valid Username as "Adgnjrnkjgmin"
        And  User enter password as "admin123"
        And  User clicks on login button
        Then User should get login error Message

    Scenario: Verify Login with invalid Username and invalid password
        Given User Launch the Application
        When User Enter Valid Username as "erngjrnkg"
        And  User enter password as "nfjr"
        And  User clicks on login button
        Then User should get login error Message