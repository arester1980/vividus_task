Scenario: UI controls (any) validation
Given I am on the main application page
When I find >= `1` elements by `By.xpath(//li/a[contains(@href, "/")])` and for each element do
|step                                                                                      |
