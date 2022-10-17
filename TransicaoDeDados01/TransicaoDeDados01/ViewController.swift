//
//  ViewController.swift
//  TransicaoDeDados01
//
//  Created by Vinicius Cleim on 17/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func tappedButton(_ sender: UIButton) {
        
        let vc = UIStoryboard (name: "SecondViewController", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        vc?.name = "\(nameTextField.text ?? "") \(lastNameTextField.text ?? "")" 
        
        
       present(vc ?? UIViewController(), animated: true)
        
    }
    
}

