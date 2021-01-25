Description: Enter as exist user;

GivenStories: story/precondition/precondition.story

Scenario: Log In
When I click on element located `By.xpath(//a[contains(@href, "/login")])`
When I enter `${emailUser}` in field located `By.xpath(//*[@id="user"])`
When I wait until element located `By.xpath(//div[@id='password-entry'])` disappears
When I click on element located `By.xpath(//*[@id="login"])`
When I wait until element located `By.xpath(//*[@id="password"])` appears
When I enter `${emailPass}` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login-submit"])`
Then the page with the URL containing '${userName}' is loaded

Scenario: Verify user
When I wait until element located `By.xpath(//button[@data-test-id="header-member-menu-button"])` appears
When I click on element located `By.xpath(//button[@data-test-id="header-member-menu-button"])`
When I wait until element located `By.xpath(//a[@href="/${userName}/profile"])` appears
When I click on element located `By.xpath(//a[@href="/${userName}/profile"])`
When I wait until element located `By.xpath(//input[@name="username"])` appears
Then the text '${userName}' exists