*** Settings ***
Documentation    Neste arquivo estão as ações página de Dashboard.
Library    SeleniumLibrary
Resource   ../main.robot

*** Keywords ***

E realizo logout 
    # Obter todos os identificadores de janelas/abas abertas
    ${handles}=    Get Window Handles
    # Alternar para a nova aba (última aba aberta)
    Switch Window    ${handles}[-1]

Então o sistema deve criar a conta e redirecionar para a página My account. 
    
    Wait Until Element Is Visible    xpath=//a[@class='active'][contains(.,'Dashboard')]
    Capture Page Screenshot

Então o sistema deve redirecionar o usuário para a tela de Dashboard

    Wait Until Element Is Visible    xpath=//a[@class='active'][contains(.,'Dashboard')]

E deve exibir a mensagem""Login realizado"

    Wait Until Element Is Visible    xpath=//h2[@class='swal2-title'][contains(.,'Login realizado')]
    Capture Page Screenshot

Então o sistema deve redirecionar o usuário para a tela de login 

    Wait Until Element Is Visible    xpath=//h2[@class='swal2-title'][contains(.,'Login realizado')]    timeout=10
    Click Button    ${Botao_ok.Botao_Login_Realizado}
    Wait Until Element Is Visible    xpath=//a[@class='active'][contains(.,'Dashboard')]    timeout=10
    Wait Until Element Is Visible    xpath=//a[contains(.,'logout')]    timeout=15
    Click Element   ${Botao_logout.Botao_desconectar}
    Capture Page Screenshot