#language: pt
#encoding: utf-8

@executa_tudo_teste
Funcionalidade: Efetuar Calculos

Contexto:
  Dado que abra a aplicação calculadora

@Efetua_Soma
Cenário: Efetua_Soma
  Dado clicar no botão "1"
  E clicar no botão "Adicionar"
  E clicar no botão "1"
  Quando clicar no botão "Igual a"
  Então será apresentado na tela resultado o número "2"