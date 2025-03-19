*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/RegisterPageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup        Open Browser     ${baseUrl}      chrome
Suite Teardown     Close Browser

*** Test Cases ***
As a user, I want to register
    When user register to futureskill with ${email} ${firstname} ${lastname} ${phone_number} and ${password}
    Then futureskill should display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
    [Teardown]