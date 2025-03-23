*** Settings ***
Documentation    Neste arquivo estão as ações página Login de Usuário.
Library    SeleniumLibrary
Resource   ../main.robot

*** Keywords ***

Quando realizo login e acesso o dashboard
    # Obter todos os identificadores de janelas/abas abertas
    ${handles}=    Get Window Handles
    # Alternar para a nova aba (última aba aberta)
    Switch Window    ${handles}[-1]
    Wait Until Element Is Visible    xpath=//h3[contains(.,'Login')]   timeout=15
    Input Text    xpath=//input[contains(@type,'text')]    ${Email_valido}
    Input Password    xpath=//input[contains(@type,'password')]    ${PASSWORD_valida}
    Click Button    ${Botao_login.Botao_acesso}

Quando realizo login com email inválido
    # Obter todos os identificadores de janelas/abas abertas
    ${handles}=    Get Window Handles
    # Alternar para a nova aba (última aba aberta)
    Switch Window    ${handles}[-1]
    Wait Until Element Is Visible    xpath=//h3[contains(.,'Login')]   timeout=15
    Input Text    xpath=//input[contains(@type,'text')]    ${Email_invalido}
    Input Password    xpath=//input[contains(@type,'password')]    ${PASSWORD_invalida}
    Click Button    ${Botao_login.Botao_acesso}

Então o sistema exibir a mensagem de "E-mail inválido"
    Wait Until Element Is Visible    xpath=//div[@class='default-form-box'][contains(.,'E-mail*E-mail inválido.')]
    Capture Page Screenshot