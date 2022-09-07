*** Variables ***
#NAVEGADOR
${URL}        https://rahulshettyacademy.com/AutomationPractice/
${NAVEGADOR}        GC
#Select mexico
${Me}        Me
${Me_locator}       //input[@id="autocomplete"]
${Mexico_locator}        //div[contains(text(),'Mexico')]
#Dropdown
${List}     //select[@id="dropdown-class-example"]
${Option2}        option2
${Option3}        option3
#Switch Window
${SwitchWindow}     //button[@id="openwindow"]
${WaitOtherWindows}     //button[contains(text(),'NO THANKS')]
${MoneyBack}        //h3[contains(text(),'30 day Money Back Guarantee')]
#Switch Tab Window
${SwitchTabWindow}     //a[@id="opentab"]
${WaitConsulting}        //a[contains(text(),'VIEW ALL COURSES')]
#Switch To Alert
${SwitchAlert}        //input[@id="name"]
${Stori}        Stori Card
${Alert}        //input[@id="alertbtn"]
${message}        Hello Stori Card, Are you sure you want to confirm?