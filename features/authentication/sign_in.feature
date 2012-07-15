Feature: Sign in 
  In order to use the site
  As a user
  I want to sign in
 
	@wip
	Scenario: Login with Facebook
	  Given I am on the home page
    And I am not authenticated
    And I follow the 

	  And I follow the "Sign in with Facebook" link
	  And I fill in "Email" with "myforeskin@gmail.com"
	  And I press "Sign up to get a confirmation email"
	  Then show me the page