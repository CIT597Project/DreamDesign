Feature: Users sign up

	As a user
	so that I can have my own school list
	I want to sign up an account
	
	Scenario: Open the home page
		Given I'm on the home page
		Then I should see "sign up" on the right corner
		
		
	Scenario: Sign up successfully
		Given I'm on the sign up page
		When I fill eligible email and passwords
		And click "sign up"
		Then I should sign in my account
		And see my school list
		
	Scenario: Sign up with empty field
		Given I'm on the sign up page
		But there is empty field
		When I click "sign in"
		Then I should see hint message 
		
	Scenario: Sign up with existing email
		Given I'm on the sign up page
		When I input an existing email
		And I click "sign in"
		Then I should see hint message
		
	Scenario: Sign up with wrong confirm password
		Given I'm on the sign up page
		When I input different passwords
		And I click "sign in"
		Then I should see error message
		
	Scenario: Sign up with Facebook account
		Given I'm on Facebook sign up page
		When I fill correct Facebook email and password
		And click "sign up"
		Then I should sign in my account
		And see my school list