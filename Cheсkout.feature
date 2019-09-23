Feature: checkout

Scenario: User opens cart page 
Given I open the url "/cart"
And   I set "omega 3" to the inputfield "#txtSearch"
Then  I expect that element "#txtSearch" is not empty 
When  I click on the element ".icon-search"

Scenario: User select product on searching page
When I click on the element "#pid_11534 .product-image-wrapper bdi"
And I pause for 5000ms 

Scenario: User add product to the cart 
When I click on the element ".icon-header-cart"
And I pause for 5000ms

Scenario: User proceed to checkout 
When I set "90804" to the inputfield "#zip-input"
Then I expect that element "#zip-input" is not empty 
And I click on the element "#calc-ship"
When I click on the element ".btn-xl"
