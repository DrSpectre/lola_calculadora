//
//  ViewController.swift
//  Calculadora Lola
//
//  Created by Jadzia Gallegos on 28/08/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var texto_a_cambiar: UILabel!
    @IBOutlet weak var boton_operacion: UIButton!
    
    var botones_interfaz: Dictionary<String, IUBotonCalculadora> = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inicializar_calculadora()
        
    }
    
    
    /// <#Description#>
    /// - Parameter sender: <#sender description#>
    @IBAction func que_hacer_al_pushar_boton(_ sender: UIButton) {
        // TODO: Arreglar glitch del text quitando el optional
        let text_a_añadir = botones_interfaz[(sender.restorationIdentifier ?? boton_operacion.restorationIdentifier) ?? "boton"]?.numero
        texto_a_cambiar.text = "\(texto_a_cambiar.text ?? "")\(text_a_añadir!)"
    }
    
    
    func inicializar_calculadora() -> Void{
        crear_arreglo_botones()
    }
    
    func crear_arreglo_botones() -> Void {
        for numero in 0...9{
            botones_interfaz["boton_\(numero)"] = IUBotonCalculadora(
                    "boton_\(numero)",
                    numero: Character("\(numero)"),
                    operacion: ""
                )
        }
    }
    

}

