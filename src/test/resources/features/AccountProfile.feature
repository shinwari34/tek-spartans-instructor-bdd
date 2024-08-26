Feature: Account profile feature

  Background: Login to to account and setups
    Given user click on "Sign in" link
    Then validate user is in sign in page
    When user enter "najeebullah9742@gmail.com" on "Email" field
    When user enter "Password@123" on "Password" field
    When user click on "Login" button
    Then user should be able to see account link
    Given user click on "Account" link

  @UserStory5
  Scenario: Change Name and phone number and validate
    Then validate user is in account page
    When user enter "Najeebullah" on "Name" field
    When user enter "5714979742" on "Phone Number" field
    When user click on "Update" button
    Then validate Toast Displayed
    When wait for 5 seconds
    Then validate account name is "Najeebullah"
    When user enter "John" on "Name" field
    When user enter "5714979742" on "Phone Number" field
    When user click on "Update" button
    Then validate Toast Displayed