Feature: Memory Game

As a user, I want the option to enter a question and answer or to take the quiz so that I can test my memory

Scenario Outline: From the homepage I can enter a question or take the quiz
	Given I am on the homepage
	When I see "Welcome to the quiz"
	Then I see "<options>"
		Examples:
		| options		   |
		| Enter a question |
		| Take the quiz    |