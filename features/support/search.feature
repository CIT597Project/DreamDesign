Feature: keyword searching

	As a user
	so that I can find the information I'm interested in
	I want to search information according to keywords
	
	Scenario: inputing keywords
		Given I am inputting keywords in the search box
		Then I should see the matching items in the dropdown list
		
	Scenario: Render search results
		Given I have filled the search box
		When I click the searching icon or I input enter via the keyboard
		Then I should see the searching results
		
	Scenario: No matched items
		Given I have clicked the searching icon
		When there is no matching items
		Then I should see no matched items
		
		
	