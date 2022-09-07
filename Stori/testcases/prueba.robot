*** Settings ***
Resource        ../keywords/common/load_componentes.Resource

*** Test Cases ***
TC-Select mexico
    Abrir Navegador
    Select mexico

TC-Dropdown
    Abrir Navegador
    Dropdown
TC-Switch other Window
    Abrir Navegador
    Switch a other Window
TC-Switch other Tab Example
    Abrir Navegador
    Switch Tab Example
TC-Switch To Alert
    Abrir Navegador
    Switch To Alert