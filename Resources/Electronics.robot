*** Keywords ***

User Searches for the Desired Product
    [Arguments]    ${search_item}
    #${mob_item2} =  xpath=//android.widget.FrameLayout[@resource-id="com.flipkart.android:id/main_content"]/android.widget.FrameLayout/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.TextView[2]
    
    FOR  ${i}  IN RANGE  1  100
        ${mouse1} =  Get Text  ${item1}
        ${mouse2} =  Get Text  ${item2}
        Log to Console  ${mouse1}
        Log to Console  ${mouse2}
        RUN KEYWORD IF  "${mouse1}" == "${search_item}"  Click Element  ${item1}
        ...  ELSE IF  "${mouse2}" == "${search_item}"  Click Element  ${item2}
        ...  ELSE  Log to Console  --------------------------------------------------
        Exit For Loop If  "${mouse1}" == "${search_item}" or "${mouse2}" == "${search_item}" 
        Swipe By Percent  50  80  50  60
        
    END