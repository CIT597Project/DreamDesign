Feature: Users sign up

	As a user
	so that I can sign in the website
	Scenario: Open the home page
		Given I'm on the home page
		Then I should see "sign in" on the right corner
		
		
	Scenario: Sign in successfully
		Given I'm on the sign in page
		When I fill in my email and password
		And click "sign in"
		Then I should sign in my account
		And see the last page before I sign in
		
	Scenario: Sign in unsuccessfully
		Given I'm on the sign in page
		But I enter my password or email wrong
		When I click "sign in"
		Then I should see an error message

	Scenario: Sign in successfully with Facebook account
		Given I'm on the sign in page and choose to sign in using Facebook account
		When I type in correct Facebook email and password
		And click "sign in"
		Then I should sign in my account
		And see the last page before I sign in

  Scenario: Sign in unsuccessfully with Facebook account
    Given I'm on the sign in page and choose to sign in with Facebook account
    When I type in wrong Facebook email or password
    And click "sign in"
    Then I see an error message