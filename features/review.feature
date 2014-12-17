Feature: Add reviews

	As a user
	In order to add a personal description
	I want to add reviews to a specific university
	
	Background:
		Given I logged in
	
	Scenario: Add comment to a school
		Given I have added some text to the comment field
		When I click "save"
		Then I am able to update this comment
		When I click the delete icon
		Then I am able to delete this review
		
		