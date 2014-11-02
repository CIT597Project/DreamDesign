Feature: user log in

	As a user
	so that I can edit my school list
	I want to log into my own account
	
	Scenario: open the home page
		Given I'm on the home page
		Then I should see the information of different universities
		
	Scenario: sign in with email
		Given I'm on the sign in page
		When I fill the email and password fields
		And I click the sign in button
		Then I should be able to sign in my own account
		And see my school list
		
	Scenario: sign in with Facebook account
		Given I'm on Facebook sign in page
		When I fill my Facebook email and password
		Then I should be able to sign in my own account
		And see my school list
		
	Scenario: sign in with non-existing email
		Given I'm on the sign in page
		When I submit non-existing email
		Then I should see errors on the page
		
	Scenario: sign in with wrong password
		Given I'm on the sign in page
		When I submit wrong password
		Then I should see errors on the page