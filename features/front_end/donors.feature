Feature: Donors
	Background:
		As a donor user
		In order to make a donation
		I should have an interface

	Scenario: Creating a donation
		Given I am an authenticated donor user
		When I visit the donor section
		And I click on the "Add donation" link
		And I add a donation
		Then that donation should be saved