//
//  SecondViewController.swift
//  Dices
//
//  Created by Mac@IBM  on 17/02/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var result1: UILabel!
    @IBOutlet weak var result2: UILabel!
    @IBOutlet weak var result3: UILabel!
    @IBOutlet weak var result4: UILabel!
    @IBOutlet weak var btImageDado: UIButton!
    
    var lados = 0
    var imagem = ""
    var arrayd100 = [00, 10, 20, 30, 40, 50, 60, 70, 80, 90]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(lados == 0 || imagem == ""){
            let alertaErro = UIAlertController(title: "Nenhum dado selecionado. Tente novamente.", message: nil, preferredStyle: .alert)
            
            self.present(alertaErro, animated: true)
        }
        
        let img = UIImage(named: imagem) as UIImage?
        btImageDado.setBackgroundImage(img, for: .normal)
    }
    
    
    func rollDice (){
        
        if(result1.text == "" || result1.text == nil){
            lados != 100 ? (result1.text = "\(Int.random(in: 1...lados))") : (result1.text = "\(arrayd100[Int.random(in: 0...9)])")
            result1.text == "20" ? (result1.backgroundColor = UIColor(red: 218, green: 165, blue: 0, alpha: 1.00)) : (print(""))
            
        } else if(result2.text == "" || result2.text == nil){
            lados != 100 ? (result2.text = "\(Int.random(in: 1...lados))") : (result2.text = "\(arrayd100[Int.random(in: 0...9)])")
            result2.text == "20" ? (result2.backgroundColor = UIColor(red: 218, green: 165, blue: 0, alpha: 1.00)) : (print(""))
            
        } else if(result3.text == "" || result3.text == nil){
            lados != 100 ? (result3.text = "\(Int.random(in: 1...lados))") : (result3.text = "\(arrayd100[Int.random(in: 0...9)])")
            result3.text == "20" ? (result3.backgroundColor = UIColor(red: 218, green: 165, blue: 0, alpha: 1.00)) : (print(""))
        } else if(result4.text == "" || result4.text == nil){
            lados != 100 ? (result4.text = "\(Int.random(in: 1...lados))") : (result4.text = "\(arrayd100[Int.random(in: 0...9)])")
            result4.text == "20" ? (result4.backgroundColor = UIColor(red: 218, green: 165, blue: 0, alpha: 1.00)) : (print(""))
        } else {
            
            let alert = UIAlertController(title: "Tem certeza que deseja continuar? Os 4 resultados gerados serão deletados.", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))

            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                self.result1.text = ""
                self.result1.backgroundColor = UIColor.systemGray4
                
                self.result2.text = ""
                self.result2.backgroundColor = UIColor.systemGray4
                
                self.result3.text = ""
                self.result3.backgroundColor = UIColor.systemGray4
                
                self.result4.text = ""
                self.result4.backgroundColor = UIColor.systemGray4
            }))

            self.present(alert, animated: true)
            
        }
    }
    
    @IBAction func btRoll(_ sender: UIButton) {
        rollDice()
    }
    
    @IBAction func btDado(_ sender: UIButton) {
        rollDice()
    }
}

