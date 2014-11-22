Feature: keyword searching

	As a user
	so that I can find the information I'm interested in
	I want to search information according to keywords
	
	Scenario: inputing university names
		Given I've filled the search-box
		When I click the searching icon 
		Then I should see the searching results
		
	Scenario: No matched items
		Given I've clicked the searching icon
		When there is no matching items
		Then I should see "no matched items"
		
		
	