Feature: Update profile

	As a user
	so that I can update my username and password anytime
	I want to edit my profile
	
	Scenario: Upload a photo
		Given I'm on the profile setting page
		When I click "upload a photo"
		Then I'm able to upload a .jpg file
		Then I should seeit as my avatar
		
	Scenario: Update username
		Given I'm on the profile setting page
		When I input text in the username field
		And I click "update"
		Then my username is updated
		And I should see hint message
		
	Scenario: Update password
		Given I'm on the profile setting page
		When I input the same password in the password field and the confirm password field
		And I click "update"
		Then my password is updated
		And I should see hint message
		
	