Feature: Share comments on Facebook
	
	As a user
	so that I can let my friends see the comment
	I want to share the comments as moments on Facebook
	
	Scenario: Share on Facebook
		Given I'm editing the comments
		And I've logged in with facebook account
		When I chcek "share on facebook"
		And click save
		Then I can share the comment on Facebook
		
	