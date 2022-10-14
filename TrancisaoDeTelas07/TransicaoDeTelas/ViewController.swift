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
        
        let vc = UIStoryboard(name: "SecondViewController", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        navigationController?.pushViewController(vc ?? UIViewController(), animated: false)
    }
    
    func configNameButton() {
        
        screamPassButton.setTitle("Vamos para a proxima tela?", for: .normal)
    }
    
    
}

