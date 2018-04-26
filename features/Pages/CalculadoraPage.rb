#encoding: utf-8

require 'magic_encoding'

class CalculadoraPage < CalculadoraLocators

    def start_calculadora
        cont = 0
        while Uia.find_element(title: /Calculadora/).nil? and cont < 10
            sleep 1
            cont += 1
        end
        raise "Falha ao tentar abrir a calculadora" if Uia.find_element(title: /Calculadora/).nil?
        $win = Uia.find_element(title: /Calculadora/)
    end

    def clicar_botao(btn)
        clicar_uia_button(botao_calc(btn), btn)
    end

    def verifica_result(result)
        raise "Resultado apresentado <#{tela_result.name}> é diferente do informado <#{result}>" if tela_result.name != result
    end

end