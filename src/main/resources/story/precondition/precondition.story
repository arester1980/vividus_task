Scenario: Enter as exist user
Given I am on the main application page
When I click on element located `By.xpath(//a[contains(@href, "/login")])`
When I enter `${emailUser}` in field located `By.xpath(//*[@id="user"])`
When I wait until element located `By.xpath(//div[@id='password-entry'])` disappears
When I click on element located `By.xpath(//*[@id="login"])`
When I wait until element located `By.xpath(//*[@id="password"])` appears
When I enter `${emailPass}` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login-submit"])`
Then the page with the URL containing '${userName}' is loaded