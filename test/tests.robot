*** Settings ***
Documentation    Este arquivo contém os casos de teste Cadastro e Login e Logout no E-commerce Qazando Shop.
Resource   ../resource/main.robot
Test Setup    Abrir o navegador

*** Test Cases ***

TC01: Cadastro de usuário válido
    [Documentation]    Teste que valida o cadastro de um usuário ao inserir um Nome válido, um E-mail válido e uma Senha válida.
    [Tags]    TC01
    Dado que estou na home page do site e acesso a pagina de cadastro de usuário
    Quando realizo cadastro com nome válido email válido e senha válida
    E confirmo o cadastro
    Então o sistema deve criar a conta e redirecionar para a página My account. 
    
TC02: Cadastro de usuário inválido
    [Documentation]    Teste que valida o cadastro de um usuário ao inserir um Nome válido, um E-mail inválido e uma Senha inválida.
    [Tags]    TC02
    Dado que estou na home page do site e acesso a pagina de cadastro de usuário
    Quando realizo cadastro com nome valido email vazio e senha vazia
    E confirmo o cadastro
    Então deve exibir a mensagem de erro "O campo e-mail deve ser preenchido corretamente"

TC03: Logout da conta da loja 
    [Documentation]    Teste que valida o logout da conta do usuário.
    [Tags]    TC03
    Dado que estou na home page do site e acesso a pagina de login de usuário
    Quando realizo login e acesso o dashboard
    E realizo logout 
    Então o sistema deve redirecionar o usuário para a tela de login 

TC04: Login Válido
    [Documentation]    Teste que valida o login de um usuário com dados válidos.
    [Tags]    TC04
    Dado que estou na home page do site e acesso a pagina de login de usuário
    Quando realizo login e acesso o dashboard
    Então o sistema deve redirecionar o usuário para a tela de Dashboard
    E deve exibir a mensagem""Login realizado"

TC05: Login Inválido
    [Documentation]    Teste que valida o login de um usuário com dados inválidos.
    [Tags]    TC05
    Dado que estou na home page do site e acesso a pagina de login de usuário
    Quando realizo login com email inválido
    Então o sistema exibir a mensagem de "E-mail inválido"