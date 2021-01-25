Description: crash by CAPTCHA;

Scenario: Sign Up
Given I am on the main application page
When I initialize the SCENARIO variable `email` with value `#{generate(Internet.emailAddress)}`
When I enter `${email}` in field located `By.xpath(//input[@class="quick-signup-email"])`
When I click on element located `By.xpath(//form/button[contains(text(),"Sign Up")])`
Then field located `By.xpath(//form[@id="form-sign-up"])` exists
Then field located `By.xpath(//input[@value="${email}"])` exists
When I click on all elements located `By.xpath(//button[@id="signup-submit"])`
Then number of elements found by `By.xpath(//div[contains(@class,"WarningIcon")])` is EQUAL_TO `2`
When I enter `<name>` in field located `By.xpath(//input[@id="displayName"])`
When I click on all elements located `By.xpath(//button[@id="signup-submit"])`
Then number of elements found by `By.xpath(//div[contains(@class,"WarningIcon")])` is EQUAL_TO `1`
When I clear field located `By.xpath(//input[@id="displayName"])`
When I enter `<password>` in field located `By.xpath(//input[@id="password"])`
When I click on all elements located `By.xpath(//button[@id="signup-submit"])`
Then number of elements found by `By.xpath(//div[contains(@class,"WarningIcon")])` is EQUAL_TO `1`
When I enter `<name>` in field located `By.xpath(//input[@id="displayName"])`
When I click on all elements located `By.xpath(//button[@id="signup-submit"])`
Examples:
|name                           |password                       |
|#{generate(regexify'[a-z]{5}')}|#{generate(regexify'[0-9]{5}')}|