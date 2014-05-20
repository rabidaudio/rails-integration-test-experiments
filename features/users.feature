Feature: Users
    In order to be identified on the site
    As a regular user of the site
    I should have an account I can log into

    Scenario: I can log in
        Given I have a valid account
        When I log into the site
        Then I see my profile

    Scenario: I can send my bio to friends
        Given I have a valid account
        When I send my bio to a friend
        Then they receive a copy
