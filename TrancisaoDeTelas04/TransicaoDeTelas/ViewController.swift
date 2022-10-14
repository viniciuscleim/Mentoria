//
//  ViewController.swift
//  TransicaoDeTelas
//
//  Created by Vinicius Cleim on 14/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func tappedButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goTela02", sender: nil)
    }
    
    
    
}

