GivenStories: story/precondition/precondition.story

Scenario: Fife steps visual
When I wait until element located `By.xpath(//button[@data-test-id="header-member-menu-button"])` appears
When I wait <element> and compare <screen> and click on <link>
Examples:
|element                                                    |screen            |link                                               |
|By.xpath(//div[@class="content-all-boards"])               |first_page        |By.xpath(//*[contains(text(), "Главная страница")])|
|By.xpath(//*[contains(text(), "Создать доску")])           |main_page         |By.xpath(//*[contains(text(), "Шаблоны")])         |
|By.xpath(//button[@class="_2ZRA1y6tsW_0-s voB8NatlbuEme5"])|templates         |By.xpath(//li/a[contains(@href, "business")])      |
|By.xpath(//div[@class="content-all-boards"])               |templates_buisness|By.xpath(//*[contains(text(), "Начало работы")])   |
|By.xpath(//*[contains(text(), "НАЧАЛО РАБОТЫ")])           |info              |By.xpath(//*[contains(text(), "Главная страница")])|

Scenario: Verify user
When I wait until element located `By.xpath(//button[@data-test-id="header-member-menu-button"])` appears
When I click on element located `By.xpath(//div[contains(@title, "${userName}")])`
When I click on element located `By.xpath(//a[@href="/${userName}/profile"])`
Then the text '@${userName}' exists