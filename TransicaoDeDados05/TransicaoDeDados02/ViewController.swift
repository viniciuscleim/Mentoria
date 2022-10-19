//
//  ViewController.swift
//  TransicaoDeDados02
//
//  Created by Vinicius Cleim on 18/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameLastNameTextField: UITextField!
    
    
    @IBOutlet weak var ageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func tappedButton(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "SecondViewController", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        let marcelo = Pessoa(fullName: nameLastNameTextField.text ?? "", age: Int(ageTextField.text ?? "0") ?? 0)

        vc?.vinicius = marcelo  
        
        navigationController?.pushViewController(vc ?? UIViewController(), animated: false)
        
        
        
      
    }
    

}

