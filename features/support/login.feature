Feature: Users log in

	As a user
	so that I can edit my school list
	I want to log into my own account
	
	Scenario: Open the home page
		Given I'm on the home page
		Then I should see "log in" on the right corner
		
	Scenario: Sign in with email
		Given I am on the sign in page
		When I fill the email and password fields
		And I click the sign in icon
		Then I should be able to sign in my own account
		And see my school list
		
	Scenario: Sign in with Facebook account
		Given I'm on Facebook sign in page
		When I fill my Facebook email and password
		Then I should be able to sign in my own account
		And see my school list
		
	Scenario: Sign in with non-existing email
		Given I'm on the sign in page
		When I submit non-existing email
		Then I should see errors on the page
		
	Scenario: Sign in with wrong password
		Given I'm on the sign in page
		When I submit wrong password
		Then I should see errors on the page