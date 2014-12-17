Feature: 
	
	As a user, he is able to visit different university lists,
	such as universities, Major ranking, Hot universities, Recommended universities

	Background:
		Given I am on the home page

	
	Scenario: User is able to see all universities
		When I click the link of universities in the left bar
		Then I should see the list of all universities
	
	Scenario: User is able to see university informationo in major ranking list
		When I click on the major ranking button
		Then I should see top ten CS universities
		When I click a school in this list
		Then I should see the page of this school

	Scenario: User is able to see university informationo in recommended list
		When I click on the recommended universities button
		Then I should see recommended universities list
		When I click a school in this list
		Then I should see the page of this school





