//
//  ViewController.swift
//  TransicaoDeDados02
//
//  Created by Vinicius Cleim on 18/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nomeTextField: UITextField!
    
    @IBOutlet weak var sobrenomeTextField: UITextField!
    
    @IBOutlet weak var idadeTextField: UITextField!
    
    @IBOutlet weak var nomeMentorTextField: UITextField!
    
    @IBOutlet weak var sobrenomeMentorTextField: UITextField!
    
    @IBOutlet weak var idadeMentorTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func tappedButton(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "SecondViewController", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        let vinicius = Pessoa(nome: nomeTextField.text ?? "", sobrenome: sobrenomeTextField.text ?? "", idade: Int(idadeTextField.text ?? "0") ?? 0)
        
        let marcelo = Pessoa(nome: nomeMentorTextField.text ?? "", sobrenome: sobrenomeMentorTextField.text ?? "", idade: Int(idadeMentorTextField.text ?? "0") ?? 0)
        
        vc?.vini = vinicius
        
        vc?.celo = marcelo
        
        
        
        
        
        navigationController?.pushViewController(vc ?? UIViewController(), animated: false)
        
        
        
    }
    
    

}

