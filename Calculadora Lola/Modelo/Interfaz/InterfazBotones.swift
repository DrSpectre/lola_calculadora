//
//  InterfazBotones.swift
//  Calculadora Lola
//
//  Created by Jadzia Gallegos on 06/09/24.
//

import Foundation


// Interfaz Usuario [Nombre de la clase o estructura]
struct IUBotonCalculadora {
    var restorationID: String
    var numero: Character
    var operacion: String
    
    init(_ id: String, numero: Character, operacion: String) {
        self.restorationID = id
        self.numero = numero
        self.operacion = operacion
    }
}
