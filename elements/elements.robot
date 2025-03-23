*** Variables ***
&{Home}
...    Botao_cadastro=//i[contains(@class,'fa fa-lock')]

&{Login}
...    Botao_login=//i[contains(@class,'fa fa-user')]

&{Botao_login}
...    Botao_acesso=//button[contains(.,'login')]

&{Botao_cadastro}
...    Botao_cadastrar=//button[contains(.,'Cadastrar')]

&{Botao_logout}
...    Botao_desconectar=//a[contains(.,'logout')]

&{Botao_ok}
...    Botao_Login_Realizado=//button[@type='button'][contains(.,'OK')]