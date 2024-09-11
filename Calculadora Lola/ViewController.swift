//
//  ViewController.swift
//  Calculadora Lola
//
//  Created by Jadzia Gallegos on 28/08/24.
//

import UIKit

enum estados_de_la_calculadora {
    case seleccionar_numeros
    case escoger_operacion
    case mostrar_resultado
}

class ViewController: UIViewController {
    var estado_actual: estados_de_la_calculadora = estados_de_la_calculadora.seleccionar_numeros
    
    @IBOutlet weak var texto_a_cambiar: UILabel!
    @IBOutlet weak var operacion_texto: UILabel!
    @IBOutlet weak var segundo_termino_texto: UILabel!
    
    @IBOutlet weak var boton_operacion: UIButton!
    @IBOutlet weak var vista_stack: UIStackView!
    
    
    var botones_interfaz: Dictionary<String, IUBotonCalculadora> = [:]
    var operacion_actual: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inicializar_calculadora()
        
    }
    
    
    /// <#Description#>
    /// - Parameter sender: <#sender description#>
    @IBAction func que_hacer_al_pushar_boton(_ sender: UIButton) {
        if(estado_actual == estados_de_la_calculadora.seleccionar_numeros){
            //[X] TODO: Arreglar glitch del text quitando el optional
            if let _mensajero_id = sender.restorationIdentifier{
                let texto_cache = botones_interfaz[_mensajero_id]?.numero
                texto_a_cambiar.text = "\(texto_a_cambiar.text ?? "")\(texto_cache!)"
                
            }
        }
        else if (estado_actual == estados_de_la_calculadora.escoger_operacion){
            if let _mensajero_id = sender.restorationIdentifier{
                operacion_actual = botones_interfaz[_mensajero_id]?.operacion
            }
            else {
                operacion_actual = nil
            }
        }

    }
    
    @IBAction func boton_escoger_operacion_pulsado(_ sender: UIButton){
        if (estado_actual == estados_de_la_calculadora.seleccionar_numeros){
            estado_actual = estados_de_la_calculadora.escoger_operacion
            dibujar_numeros_u_operaciones_en_interfaz()
        }
    }
    
    
    func inicializar_calculadora() -> Void{
        identificar_botones()
        crear_arreglo_botones()
    }
    
    func crear_arreglo_botones() -> Void {
        botones_interfaz = IUBotonCalculadora.crear_arreglo_botones()
    }
    
    func dibujar_numeros_u_operaciones_en_interfaz(){
        if(estado_actual == estados_de_la_calculadora.escoger_operacion){
            
        }
        
        else if (estado_actual == estados_de_la_calculadora.seleccionar_numeros){
            
        }
    }
    
    func identificar_botones(){
        /*
        for componente in self.view.subviews{
            print(componente.restorationIdentifier)
        }
         */
        
        for pila_de_componentes in vista_stack.subviews{
            for boton in pila_de_componentes.subviews{
                print(boton.restorationIdentifier)
            }
        }
        
        
        // self.view.subviews
        /*for stack_con_vista in vista_stack.subviews {
            for boton in stack_con_vista.subviews {
                print(boton.restorationIdentifier)
            }
        }*/
    }
    

}

