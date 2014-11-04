Feature: Edit School list

	As a user
	so that I can mark the school I'm interested in
	I want to have a school list
	
	Scenario: Add a non-duplicated school to school list
		Given I've logged in
		When I click "Add to my list" icon besides a school name
		Then this school will exist in my school list
		And I should see success message
		
	Scenario: Add a duplicated school to the school list
	  Given I've logged in
		When I click "Add to my list" icon besides a school name
		Then I should see "This school already exist in my school list"
		
	Scenario: Delete a school in the school list
		 Given I've logged in
		 And I'm in the page of school list
		 When I click "delete" icon besides a school
		 Then this school will be out of my school list