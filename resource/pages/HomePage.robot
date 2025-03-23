*** Settings ***
Documentation    Neste arquivo estão as ações página Home.
Library    SeleniumLibrary
Resource   ../main.robot

*** Keywords ***

Abrir o navegador

    Open Browser    browser=chrome  
    Maximize Browser Window
    Go To    url=${URL}

Dado que estou na home page do site e acesso a pagina de cadastro de usuário

    Wait Until Element Is Visible    ${Home.Botao_cadastro}    timeout=15
    Click Element    ${Home.Botao_cadastro}

Dado que estou na home page do site e acesso a pagina de login de usuário

    Wait Until Element Is Visible    ${Login.Botao_login}    timeout=10
    Click Element    ${Login.Botao_login}