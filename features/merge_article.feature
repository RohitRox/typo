Feature: Merge Articles
  As a blog administrator
  In order to avoid mutiple copies of similar articles
  I want to be able to merge two articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist:
    | id | title    | body              |
    | 3  | Article1 | Lorem epsum.      |
    | 4  | Article2 | Duis aute irure.  |

  Scenario: Successfully merge articles
    Given I am on the articles edit page for Article1
    When I fill in "merge_with" with "4"
    And I press "Merge"
    Then the article "Article1" should have "body" having content "Lorem epsum. Duis aute irure."