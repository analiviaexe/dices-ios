//
//  ViewController.swift
//  Dices
//
//  Created by Mac@IBM  on 17/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! SecondViewController
        if (segue.identifier == "seg1d4") {
            destino.lados = 4
            destino.imagem = "1d4"
        } else if (segue.identifier == "seg1d6"){
            destino.lados = 6
            destino.imagem = "1d6"
        } else if (segue.identifier == "seg1d8"){
            destino.lados = 8
            destino.imagem = "1d8"
        } else if (segue.identifier == "seg1d12"){
            destino.lados = 12
            destino.imagem = "1d12"
        } else if (segue.identifier == "seg1d20"){
            destino.lados = 20
            destino.imagem = "1d20"
        } else {
            destino.lados = 100
            destino.imagem = "1d100"
        }
        
    }
    
}

