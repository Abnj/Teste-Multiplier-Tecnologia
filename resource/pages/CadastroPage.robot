*** Settings ***
Documentation    Neste arquivo estão as ações da página de Cadastro de Usuário.
Library    SeleniumLibrary
Resource   ../main.robot

*** Keywords ***
Quando realizo cadastro com nome válido email válido e senha válida

    # Obter todos os identificadores de janelas/abas abertas
    ${handles}=    Get Window Handles
    # Alternar para a nova aba (última aba aberta)
    Switch Window    ${handles}[-1]
    Wait Until Element Is Visible    xpath=//h3[contains(.,'Cadastro de usuário')]   timeout=15
    Input Text    xpath=//input[contains(@type,'text')]    ${USERNAME_valido}
    Input Text    xpath=//input[contains(@id,'email')]    ${Email_valido}
    Input Text    xpath=//input[contains(@type,'password')]  ${PASSWORD_valida}
    Execute JavaScript    window.scrollBy(0, 1000)

Quando realizo cadastro com nome valido email vazio e senha vazia

    # Obter todos os identificadores de janelas/abas abertas
    ${handles}=    Get Window Handles
    # Alternar para a nova aba (última aba aberta)
    Switch Window    ${handles}[-1]
    Wait Until Element Is Visible    xpath=//h3[contains(.,'Cadastro de usuário')]   timeout=15
    Input Text    xpath=//input[contains(@type,'text')]    ${USERNAME_valido}
    Input Text    xpath=//input[contains(@id,'email')]    ${Email_vazio}
    Input Text    xpath=//input[contains(@type,'password')]  ${PASSWORD_vazio}
    Execute JavaScript    window.scrollBy(0, 1000)

E confirmo o cadastro

    Click Element    ${Botao_cadastro.Botao_cadastrar}

Então deve exibir a mensagem de erro "O campo e-mail deve ser preenchido corretamente"

    Click Element    ${Botao_cadastro.Botao_cadastrar}
    Wait Until Element Is Visible    xpath=//span[@class='errorLabel'][contains(.,'O campo e-mail deve ser prenchido corretamente')]    timeout=8
    Capture Page Screenshot    