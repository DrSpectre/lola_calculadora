//
//  InterfazBotones.swift
//  Calculadora Lola
//
//  Created by Jadzia Gallegos on 06/09/24.
//

import Foundation
import UIKit


// Interfaz Usuario [Nombre de la clase o estructura]
struct IUBotonCalculadora {
    var referencia_a_boton_interfaz: UIButton?
    var numero: Character
    var operacion: String
    
    init(numero: Character, operacion: String) {
        self.referencia_a_boton_interfaz = nil
        self.numero = numero
        self.operacion = operacion
    }
    
    static func crear_arreglo_botones() -> Dictionary<String, IUBotonCalculadora> {
        var botones_interfaz: Dictionary<String, IUBotonCalculadora> = [:]
        

        botones_interfaz["boton_0"] = IUBotonCalculadora(
                                                    numero: Character("0"),
                                                    operacion: ""
                                                    )
        
        botones_interfaz["boton_1"] = IUBotonCalculadora(
                                                    numero: Character("1"),
                                                    operacion: "+"
                                                    )
        botones_interfaz["boton_2"] = IUBotonCalculadora(
                                                    numero: Character("2"),
                                                    operacion: ""
                                                    )
        botones_interfaz["boton_3"] = IUBotonCalculadora(
                                                    numero: Character("3"),
                                                    operacion: "-"
                                                    )
        botones_interfaz["boton_4"] = IUBotonCalculadora(
                                                    numero: Character("4"),
                                                    operacion: ""
                                                    )
        botones_interfaz["boton_5"] = IUBotonCalculadora(
                                                    numero: Character("5"),
                                                    operacion: ""
                                                    )
        botones_interfaz["boton_6"] = IUBotonCalculadora(
                                                    numero: Character("6"),
                                                    operacion: ""
                                                    )
        botones_interfaz["boton_7"] = IUBotonCalculadora(
                                                    numero: Character("7"),
                                                    operacion: "*"
                                                    )
        botones_interfaz["boton_8"] = IUBotonCalculadora(
                                                    numero: Character("8"),
                                                    operacion: ""
                                                    )
        botones_interfaz["boton_9"] = IUBotonCalculadora(
                                                    numero: Character("9"),
                                                    operacion: "/"
                                                    )
        
        return botones_interfaz
    }
}
