//
//  ViewController.swift
//  TransicaoDeTelas
//
//  Created by Vinicius Cleim on 14/10/22.
//

import UIKit




class ViewController: UIViewController {
    
    
    @IBOutlet weak var screamPassButton: UIButton!
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configNameButton()
        // Do any additional setup after loading the view.
    }

        
    @IBAction func tappedButton(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
        
        
    }
    
    func configNameButton() {
        
        screamPassButton.setTitle("Vamos para proxima tela?", for: .normal)
    }
    
    
}

