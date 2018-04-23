#encoding: utf-8

require 'magic_encoding'

class CalculadoraLocators
    
    def botao_calc(name)
        return $win.find(control_type: :button, name: name)
    end

    def tela_result
        return $win.find_all(control_type: :text)[2]
    end

end