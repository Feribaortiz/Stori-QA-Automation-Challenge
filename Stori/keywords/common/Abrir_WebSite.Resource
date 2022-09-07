*** Settings ***
Resource        load_componentes.resource
Resource        ../../locators/common/Identificadores.resource
Library    Screenshot
Library    String

*** Keywords ***

Abrir Navegador
    Set Selenium Speed    0.2
    Close All Browsers
    Open Browser        ${URL}        ${NAVEGADOR}
    Maximize Browser Window

Select mexico
    Wait Until Page Contains Element    ${Me_locator}
    Input Text    ${Me_locator}    ${Me}
    Wait Until Page Contains Element    ${Mexico_locator}
    Click Element    ${Mexico_locator}

Dropdown
    Wait Until Page Contains Element    ${List}
    Select From List By Value       ${List}        ${Option2}
    Select From List By Value       ${List}        ${Option3}

Switch a other Window
    Wait Until Page Contains Element    ${SwitchWindow}
    Click Button    ${SwitchWindow}
    Switch Window      QA Click Academy | Selenium,Jmeter,SoapUI,Appium,Database testing,QA Training Academy
    Maximize Browser Window
    Wait Until Page Contains Element        ${WaitOtherWindows}        10
    Click Button        ${WaitOtherWindows}
    Scroll Element Into View        ${MoneyBack}
    Set Focus To Element        ${MoneyBack}
    Close Window

Switch Tab Example
    Wait Until Page Contains Element    ${SwitchTabWindow}
    Click Element       ${SwitchTabWindow}
    Switch Window      Rahul Shetty Academy
    Maximize Browser Window
    Wait Until Page Contains Element        ${WaitConsulting}
    Set Focus To Element        ${WaitConsulting}
    Capture Page Screenshot        ${OUTPUTDIR}/Switch-Tab-Example.png
    Switch Window      Practice Page

Switch To Alert
    Wait Until Page Contains Element        ${SwitchAlert}
    Input Text      ${SwitchAlert}        ${Stori}
    Click Button    ${Alert}
    ${messagee} =       Handle Alert
    Log    ${messagee}
    Run Keyword And Ignore Error        Should Be Equal As Strings      ${messagee}     ${message}