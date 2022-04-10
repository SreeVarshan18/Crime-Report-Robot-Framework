*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${email}  sree.varshan06@gmail.com
${password}  123456
${username}  admin
${pass}  12345
${des}  uhngbtfbgng yfytfnic fyugbtyfgyi
${rem}  yufbyf fytbfbu gftydsd gdf ku gyfgfi uygyufs tgyf t
${date}  07-04-2022
${add}  sdgfnhgm dfhgjh tfght ftyrg dhj
${pno}  1234567898
${name}  Sree Varshan S
${nname}  Sree Varshan



*** Test Cases ***
Guest User Test
    [Documentation]  guest login
    [Tags]  user
    Open Browser  http://127.0.0.1:5000/  chrome
    Maximize Browser Window
    sleep  3s
    Click Element  xpath=//html/body/div/div/div[3]/center/div/div/a
    sleep  2s
    Add des
    Add remark
    Add Date
    sleep  3s
    Click Element  xpath=//html/body/div/div/div[2]/form/center/button
    sleep  4s
    Click Element  name:report
    sleep  2s
    Click Element  xpath=//html/body/nav/div/div/ul/li/a
    sleep  2s

User Register Test
    [Documentation]  user registration
    [Tags]  user
    Click Element  xpath=//html/body/div/div/div[2]/center/div/div/a
    sleep  1s
    Click Link  name:link
    Add Name
    Add add
    Add Email
    Add phone
    Add Password
    sleep  2s
    Click Element  xpath=//html/body/div/div/div[2]/form/center/button
    sleep  3s
    Click Element  xpath=//html/body/nav/div/div[2]/div/a
    sleep  3s
    Click Element  xpath=//html/body/div/div/div[2]/center/div/div/a



User Login Test
    [Documentation]  user login
    [Tags]  user
    sleep  4s
    Add Email
    Add Password
    Click Element  xpath=//html/body/div/div/div[2]/form/center/button
    sleep  3s

User Report Test
    [Documentation]  user report
    [Tags]  user
    Add des
    Add remark
    sleep  2s
    Click Element  xpath=//html/body/div/div/div[2]/form/center/button
    sleep  2s
    Click Element  xpath=//html/body/div[1]/div/div[2]/form/div

User Edit Test
    [Documentation]  user report
    [Tags]  user
    Click Element  xpath=//html/body/nav/div/div/ul/li[1]/a
    sleep  1s
    Add Email
    sleep  1s
    Click Element  xpath=//html/body/div/div/div[2]/form[1]/table/tbody/tr[2]/td[2]/button
    Add New Name
    sleep  2s
    Click Element  xpath=//html/body/div/div/div[2]/form[2]/center/button
    sleep  2s
    Click Element  xpath=//html/body/div[1]/div/div[2]/form[2]/div/div/div/div[3]/button[2]
    sleep  4s
    Click Element  xpath=//html/body/nav/div/div/ul/li[3]/a
    sleep  2s
    Click Element  xpath=//html/body/nav/div/div[2]/div/a
    sleep  1s

Admin Login Test
    [Documentation]  admin login
    [Tags]  admin
    Click Element  xpath=//html/body/div/div/div[1]/center/div/div/a
    sleep  1s
    Add Admin
    Add Pass
    sleep  1s
    Click Element  xpath=//html/body/div/div/div[2]/form/center/button
    sleep  5s
    Click Element  xpath=//html/body/nav/div/div/ul/li[2]/a
    Add Date
    sleep  3s
    Click Element  xpath=//html/body/div/div/form/center/button
    sleep  2s
    Click Element  xpath=//html/body/nav/div/div/ul/li[3]/a
    sleep  2s
    Close Browser


*** Keywords ***
Add des
    Input Text  name:des  ${des}

Add remark
    Input Text  name:rem  ${rem}

Add Date
    Input Text  name:date  ${date}

Add Email
    Input Text  name:email  ${email}

Add Password
    Input Text  name:pass  ${password}

Add Admin
    Input Text  name:uname  ${username}

Add Pass
    Input Text  name:pass  ${pass}

Add Name
    Input Text  name:name  ${name}

Add add
    Input Text  name:add  ${add}

Add phone
    Input Text  name:pno  ${pno}

Add New Name
    Input Text  name:name  ${nname}