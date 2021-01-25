Description: Task 1;

Scenario: UI controls (any) validation
Given I am on the main application page
When I find >= `1` elements by `By.xpath(//a[contains(@data-analytics-link, "Footer")])` and for each element do
|step                                                                                      |
|When I click on element located `By.xpath(//a[contains(@data-analytics-link, "Footer")])` |
|Then the response code is equal to '200'                                                  |
