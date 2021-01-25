Description: change language;

Scenario: Change language
Given I am on the main application page
When the condition `#{eval("language-picker"!="English")}` is true I do
|step                                                                                   |
|When I select `English` in dropdown located `By.xpath(//select[@id="language-picker"])`|