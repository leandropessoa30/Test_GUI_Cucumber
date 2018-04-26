#encoding: utf-8

require 'magic_encoding'

class CalculadoraLocators
    
    def botao_calc(name)
        return $win.find(control_type: :button, name: name)
    end

    def tela_result
        return $win.find(control_type: :text, id: "150")
    end

end