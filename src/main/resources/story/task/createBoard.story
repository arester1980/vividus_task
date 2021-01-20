Description: Board creadted by API;

Scenario: Create a board by API
When I initialize the scenario variable `boardName` with value `#{generate(Name.fullName)}`
When I send HTTP POST to the relative URL '/1/boards/?key=${userKey}&token=${userToken}&name=${boardName}'
Then the response code is equal to '200'
Then JSON element by JSON path `name` is equal to `"${boardName}"`