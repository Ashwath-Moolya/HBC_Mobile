*** Keywords ***

Verify cancelled item listed
    [Arguments]    ${cancel_item_name}
    Verify Screen Content  ${cancel_item_name}
    Click Element  ${cancel_item1}
    sleep  4s
    Verify Screen Content  ${content_canceled}
    Log to Console  Test case Pass!!

Visit back to main menu
    Click Element  ${menu}
    sleep  3s
    Click Text  ${Home}
    sleep  3s