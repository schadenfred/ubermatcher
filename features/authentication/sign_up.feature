Feature: Sign up
  In order to get access to protected sections of the site
  As an unregistered user
  I want to sign up
 
  Scenario: Unregistered user signs up without third party authentication
    Given no emails have been sent
    And no user exists with an email of "sarahsilverman@test.com"
    And I am on the home page
    And I am not authenticated
    And I follow the "Sign Up" link
    And I fill in the following:
      | Email                 | sarah.silverman@test.com     |
    And I press "Sign up"
    And "sarah.silverman@test.com" should have 1 email
    When I open the email
    When I follow "Confirm my account" in the email
    And I fill in the following:
      | Password              | password        |
      | Password confirmation | password        |
    And I press "Choose my password"
    Then I should see "successfully confirmed"

  @omniauth_test
  Scenario: Unregisterd user signs in with Facebook
    Given I am on the home page
    # And I follow the "Sign in to UberMatch your Facebook friends" link

  
  
    # Scenario: Unregistered user signs up with valid email
    #   And I fill in the following:
    #     | Email                 | sarah.silverman@test.com     |
    #   And I press "Sign up"
    #   Then I should see "Step 1: Sign up"
    #   And "sarah.silverman@test.com" should have 1 email
    #   When I open the email
    #   Then I should see confirmation instructions in the subject
    #   And I should see "Sarah Silverman" in the email body
    #   And I should see "confirm" in the email body
    #   When I follow "Confirm my account" in the email
    #   Then I should see "| Step 2: Choose" in the title
    #   And I fill in the following:
    #     | Password              | password        |
    #     | Password confirmation | password        |
    #   And I press "Choose my password"
    #   Then I should see "| Step 3: Choose subdomain" in the title
    #   And I fill in the following:
    #     | Subdomain             | sarah-silverman |
    #   And I press "Choose my subdomain"
    #   Then I should see "| Thankyous" in the title
      
      
    # @wip
    # Scenario: Unregistered user signs up with invalid email
    #   And I fill in the following:
    #     | Email                 | invalidemail    |
    #   And I press "Sign up"
    #   Then I should see "doesn't look quite right"