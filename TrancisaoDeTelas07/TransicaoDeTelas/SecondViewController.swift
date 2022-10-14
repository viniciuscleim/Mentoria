//
//  SecondViewController.swift
//  TransicaoDeTelas
//
//  Created by Vinicius Cleim on 14/10/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    
    @IBOutlet weak var screamPassButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configNameButton()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tappedButton(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "ThirdViewController", bundle: nil).instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController
        
        present(vc ?? UIViewController(), animated: true)
    }
    
    
    func configNameButton() {
        
        screamPassButton.setTitle("Acabamos Por Aqui =)", for: .normal)
        
        
    }
    
}
