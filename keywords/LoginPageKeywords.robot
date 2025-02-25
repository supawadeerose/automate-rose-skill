*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user login to future skill platform with ${username} and ${password}
    CommonKeywords.Wait until element is ready then input text        name=userLoginId            ${username}
    CommonKeywords.Wait until element is ready then input text        name=password        ${password}
    CommonKeywords.Wait until element is ready then click element     xpath=//*[@id="appMountPoint"]/div/div/div/div/div[2]/div/form/div/div/div/div/div/div/div/div[1]/div/div/div[3]/div/div/div[2]/button

future skill should display display validate login fail message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text      ${expected_message}



