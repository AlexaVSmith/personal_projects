Feature: Homepage

As a user, I want the option to enter a question and answer or to take the quiz so that I can test my memory

As a user, I do not want to be given the option of taking the quiz if there are no questions

As a user, 

Background: Homepage
	Given I am on the homepage

	Scenario: The homepage displays content
		Then I see
			| welcome message  |
			| Add to the quiz  |
			| Take the quiz    |

	Scenario: I can not take the quiz if there are no questions
		When there are no questions in the quiz
		Then I do not see the option to take the quiz

