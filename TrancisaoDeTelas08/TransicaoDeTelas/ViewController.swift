//
//  ViewController.swift
//  TransicaoDeTelas
//
//  Created by Vinicius Cleim on 14/10/22.
//

import UIKit




class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var secondPassButton: UIButton!
    
    @IBOutlet weak var firsPassButton: UIButton!
    

    @IBOutlet weak var thirdPassButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configNameButton()
      
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func firstTappedButton(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "FirstViewController", bundle: nil).instantiateViewController(withIdentifier: "FirstViewController") as? FirstViewController
        
        navigationController?.pushViewController(vc ?? UIViewController(), animated: false)
        
        }
    
    
    @IBAction func secondTappedButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "SecondViewController", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        navigationController?.pushViewController(vc ?? UIViewController(), animated: false)
        
        }
    
    
    @IBAction func thirdTappedButton(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "ThirdViewController", bundle: nil).instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController
        
        present(vc ?? UIViewController(), animated: true)
        
    }
    
    
    
    
    func configNameButton() {
        
       secondPassButton.setTitle("Vamos para a tela 02?", for: .normal)
        
        firsPassButton.setTitle("Vamos para a tela 01?", for: .normal)
        
        thirdPassButton.setTitle("Vamos para tela 03?", for: .normal)
    }
    
    
}

