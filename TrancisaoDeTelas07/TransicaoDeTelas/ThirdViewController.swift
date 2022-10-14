//
//  ThirdViewController.swift
//  TransicaoDeTelas
//
//  Created by Vinicius Cleim on 14/10/22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    @IBOutlet weak var screamBackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configNameButton()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tappedButton(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: false)
    }
    
    func configNameButton() {
        
        screamBackButton.setTitle("Vamos volta uma tela?", for: .normal)
    }
    

}
