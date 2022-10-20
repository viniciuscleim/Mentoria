//
//  ViewController.swift
//  Trancisao_de_dados07
//
//  Created by Vinicius Cleim on 20/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var LastnameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var nameMentorTextField: UITextField!
    @IBOutlet weak var lastNameMentorTextField: UITextField!
    @IBOutlet weak var ageMentorTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func tappedFirstButton(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "SecondViewController", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        let vinicius = Pessoa(nome: nameTextField.text ?? "", sobrenome: LastnameTextField.text ?? "", idade: Int(ageTextField.text ?? "0") ?? 0)
        
        vc?.vini = vinicius
        
        navigationController?.pushViewController(vc ?? UIViewController(), animated: false)
    }
    
    
    @IBAction func tappedSecondButton(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "ThirdViewController", bundle: nil).instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController
        
        let marcelo = Pessoa(nome: nameMentorTextField.text ?? "", sobrenome: lastNameMentorTextField.text ?? "", idade: Int(ageMentorTextField.text ?? "0") ?? 0)
        
        vc?.celo = marcelo
        
        
        present(vc ?? UIViewController(), animated: true)
    }
    


}

