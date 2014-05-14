Feature: Bios
    In order to share information about myself
    As a user of the site
    I want to have a bio discribing myself available on the internet

    Scenario: See my bio
        Given that I am a user with a bio
        When I go to my profile
        Then I see my bio