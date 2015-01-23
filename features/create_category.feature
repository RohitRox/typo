Feature: Create Categories
  As a blog administrator
  In order to categorize my posts
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the categories new page
    When I fill in "category_name" with "category1"
    And I fill in "category_keywords" with "test_post"
    And I fill in "category_description" with "The description of category1."
    And I press "Save"
    Then I should be on the categories new page
    And I should see "category1"
    When I follow "category1"
    Then I should be on category1 edit page