#encoding: utf-8

require './features/Pages/CalculadoraPage'

calc = CalculadoraPage.new

Dado(/^que abra a aplicação calculadora$/) do
    calc.start_calculadora
    captura_desktop
end
   
Dado(/^clicar no botão "([^"]*)"$/) do |btn|
    sleep 1
    calc.clicar_botao(btn)
    captura_desktop
end
  
Então(/^será apresentado na tela resultado o número "([^"]*)"$/) do |result|
    calc.verifica_result(result)
    captura_desktop
end