Description: Task 1;

Scenario: UI controls (any) validation
Given I am on the main application page
When I find >= `1` elements by `By.xpath(//a[contains(@data-analytics-link, "Footer")])` and for each element do
|step                                                                                      |
|When I click on element located `By.xpath(//a[contains(@data-analytics-link, "Footer")])` |
|Then the response code is equal to '200'                                                  |


Scenario: Sign Up
Given I am on the main application page
When the condition `#{eval("language-picker"!="English")}` is true I do
|step                                                                                      |
|When I select `English` in dropdown located `By.xpath(//select[@id="language-picker"])`   |
When I enter `#{generate(Internet.emailAddress)}` in field located `By.xpath(//input[@class="quick-signup-email"])`
When I click on element located `By.xpath(//*[contains(text(), "Sign Up – It’s Free!")])`
Then the page title IS_EQUAL_TO 'Sign up - Log in with Atlassian account'
When I enter `Arester` in field located `By.xpath(//*[@id="displayName"])`
When I enter `#{generate(regexify '[a-z]{6}')}` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
When I wait until element located `By.xpath(//div[@data-test-id="moonshot-box"])` appears
Then the text 'Welcome, Arester' exists