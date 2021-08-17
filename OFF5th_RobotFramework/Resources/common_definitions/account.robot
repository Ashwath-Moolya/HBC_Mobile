*** Keywords ***


Create new account with valid credentials
    #Set Global Variable ${result} =  
    #${password} =  Generate Random String  8  [NUMBERS]
    Wait Until Element is Visible   ${createaccountfname}      timeout=${globaltimeout}
    Click Element   ${createaccountfname}
    Input Text   ${createaccountfname}      ${fname}
    Click Element   ${createaccountlname}
    Input Text   ${createaccountlname}      ${lname}
    Click Element   ${createaccountemail}
    ${mail} = Generate Random String  8  [NUMBERS]
    Input Text   ${createaccountemail}      ${mail}+@gmail.com
    Click Element   ${createaccountpwd}
    Input Text   ${createaccountpwd}      ${pwd}
    Click Element   ${createaccountconfirmpwd}
    Input Text   ${createaccountconfirmpwd}      ${confirmpwd}
    Click Element   ${createaccountzipcode}
    Input Text   ${createaccountzipcode}      ${zipcode}
    Click Element   ${createaccountphone}
    Input Text   ${createaccountphone}      ${phone}
    Swipe By Percent  50  80  50  10
    Click Text  CREATE ACCOUNT