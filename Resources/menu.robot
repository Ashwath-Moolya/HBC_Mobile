*** Keywords ***

User naviggates to My_Order Section from Menu
    Go to Home Menu
    sleep  4s
    Click Text  ${my_order}

User navigates to the Electronics Section from Menu
    Go to Home Menu
    sleep  4s
    Click Text  ${electronis}

navigates to Mouse Sub_Section from Computer Accessories
    sleep  4s
    Click Element  ${comp_accessories}
    sleep  3s
    Swipe By Percent  50  40  30  0
    sleep  3s
    Click Text  ${comp_accessories_SubSection}
    sleep  4s
    ${alert1} =  Get Text  ${alert_location}
    Log to Console  ${alert1}
    Run Keyword If  "${alert1}" == "${alert_title}"  Click Element  ${alert_allow_element}
    sleep  3s
    ${device_titleText} =  Get Text  ${device_allow_element}
    Log to Console  ${device_titleText}
    Run Keyword If  "${device_titleText}" == "${device_allow_title}"  Click Element  ${device_allow}
    sleep  3s