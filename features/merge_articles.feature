Feature: Merge Articles
  As a blog administrator
  I want to be able to merge two articles together

  Scenario: Non-admin accounts should not have the merge option
    Given the blog is set up
    And I am logged in as "john" with pass "12345"
    And "john" has article "TestArticle" with body "asdf"
    When I am on the edit "TestArticle" page
    Then I should not see "merge_with"

  Scenario: When articles are merged, the merged article should contain the text of both previous articles.
  	Given the blog is set up
  	And "john" has article "testArticle1" with body "part1"
  	And "doe" has article "testArticle2" with body "part2"
  	And I am logged into the admin panel
  	When I am on the edit "TestArticle" page

  Scenario: When articles are merged, the merged article should have one author (either one of the authors of the original article).  

  Scenario: Comments on each of the two original articles need to all carry over and point to the new, merged article.
  
  Scenario: The title of the new article should be the title from either one of the merged articles.