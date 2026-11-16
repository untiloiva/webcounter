
*** Settings ***
Resource    resource.robot
Suite Setup    Open Browser And Reset Counter
Suite Teardown    Close Browser

*** Test Cases ***
Setting Counter Value To Ten
    Go To    ${HOME_URL}
    Fill Text    input[name="value"]    10
    Click    button >> text=aseta
    Get Text    body    *=    nappia painettu 10 kertaa

Setting Counter Value To Five
    Go To    ${HOME_URL}
    Fill Text    input[name="value"]    5
    Click    button >> text=aseta
    Get Text    body    *=    nappia painettu 5 kertaa
