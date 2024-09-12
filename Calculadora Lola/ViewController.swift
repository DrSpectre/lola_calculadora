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
    var estado_actual: estados_de_la_calculadora = .mostrar_resultado
    
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
    
    @IBAction func que_hacer_al_pushar_boton(_ sender: UIButton) {
        if(estado_actual == estados_de_la_calculadora.seleccionar_numeros){
            if let _mensajero_id = sender.restorationIdentifier{
                let texto_cache = botones_interfaz[_mensajero_id]?.numero
                texto_a_cambiar.text = "\(texto_a_cambiar.text ?? "")\(texto_cache!)"
            }
        }
        
        else if (estado_actual == estados_de_la_calculadora.escoger_operacion){
            if let _mensajero_id = sender.restorationIdentifier{
                operacion_actual = botones_interfaz[_mensajero_id]?.operacion
                estado_actual = estados_de_la_calculadora.seleccionar_numeros
            }
            else {
                operacion_actual = nil
            }
        }
        
        dibujar_numeros_u_operaciones_en_interfaz()
    }
    
    @IBAction func boton_escoger_operacion_pulsado(_ sender: UIButton){
        switch(estado_actual){
            case .seleccionar_numeros:
                estado_actual = .escoger_operacion
            case .escoger_operacion:
                estado_actual = .seleccionar_numeros
            case .mostrar_resultado:
                estado_actual = .escoger_operacion
        }
        
        dibujar_numeros_u_operaciones_en_interfaz()
        
        
    }
    
    
    func inicializar_calculadora() -> Void{
        crear_arreglo_botones()
        identificar_botones()
    }
    
    func crear_arreglo_botones() -> Void {
        botones_interfaz = IUBotonCalculadora.crear_arreglo_botones()
    }
    
    func dibujar_numeros_u_operaciones_en_interfaz(){
        switch(estado_actual){
            case .escoger_operacion:
                for elemento in botones_interfaz.values{
                    elemento.referencia_a_boton_interfaz?.setTitle(
                            elemento.operacion,
                            for: .normal
                            )
                    elemento.referencia_a_boton_interfaz?.setTitle("Ñ", for: .selected)
                }
            
            case .seleccionar_numeros:
                for elemento in botones_interfaz.values{
                    elemento.referencia_a_boton_interfaz?.setTitle(
                        String(elemento.numero),
                        for: .normal
                    )
                }
            case .mostrar_resultado:
                    0 == 0
        }
        
    }
    
    func identificar_botones(){
        for pila_de_componentes in vista_stack.subviews{
            for boton in pila_de_componentes.subviews{
                if let identificador = boton.restorationIdentifier{
                    botones_interfaz[identificador]?.referencia_a_boton_interfaz = boton as? UIButton
                }
            }
        }
    }
    

}

