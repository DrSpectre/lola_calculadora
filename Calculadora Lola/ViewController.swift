//
//  ViewController.swift
//  Calculadora Lola
//
//  Created by Jadzia Gallegos on 28/08/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var boton_para_interactuar: UIButton!
    
    @IBOutlet weak var texto_a_cambiar: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    /// <#Description#>
    /// - Parameter sender: <#sender description#>
    @IBAction func que_hacer_al_pushar_boton(_ sender: UIButton) {
        //texto_a_cambiar.text = (sender as UIButton).titleLabel.text
        texto_a_cambiar.text = sender.titleLabel!.text ?? "Nosupe"
        //boton_para_interactuar.titleLabel
    }
    

}

