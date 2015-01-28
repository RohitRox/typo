Feature: Merge Articles Authorization
  As an author
  I should not be provided with merge form

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist:
    | id | title    | body              |
    | 1  | Article1 | Lorem epsum.      |

  Scenario: Article edit page
    Given I am on the articles edit page for Article1
    Then I should not see field "merge_with"
    And I should not see button "Merge"