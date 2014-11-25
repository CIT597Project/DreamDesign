Feature: Edit School list

	As a user
	so that I can mark the school I'm interested in
	I want to have a school list
	
	Background:
		Given I logged in


	Scenario: Add a school to school list
		When I am on the university list page
		And I choose to add to my school list
		Then I should see successful message or an already exist message
		
		
	Scenario: Delete a school in the school list
		 When I'm on my school list page
		 And I delete the school
		 Then this school will be out of my school list