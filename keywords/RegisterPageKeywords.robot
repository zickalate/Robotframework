*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user register to futureskill with ${email} ${firstname} ${lastname} ${phone_number} and ${password}
    Maximize Browser Window
    CommonKeywords.Wait until element is ready then click element    //button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text        name=email                ${email}
    CommonKeywords.Wait until element is ready then input text        name=firstName            ${firstname}
    CommonKeywords.Wait until element is ready then input text        name=lastName             ${lastname}
    CommonKeywords.Wait until element is ready then input text        name=phoneNumber          ${phone_number}
    CommonKeywords.Wait until element is ready then input text        name=newPassword          ${password}
    CommonKeywords.Wait until element is ready then input text        name=confirmPassword      ${password}
    CommonKeywords.Wait until element is ready then click element     name=consent
    Capture Page Screenshot     ./Capture/Screenshot{index}.png
    CommonKeywords.Wait until element is ready then click element     xpath=//button[text()="สมัครสมาชิก"]

futureskill should display message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text        ${expected_message}
    Capture Page Screenshot     ./Capture/Screenshot{index}.png