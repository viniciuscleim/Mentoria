//
//  SecondViewController.swift
//  Trancisao_de_dados07
//
//  Created by Vinicius Cleim on 20/10/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var vini: Pessoa?

    override func viewDidLoad() {
        super.viewDidLoad()
        configView()

        // Do any additional setup after loading the view.
    }
    
    private func  configView() {
        fullNameLabel.text = "\(vini?.nome ?? "") \(vini?.sobrenome ?? "")"
        ageLabel.text = String(vini?.idade ?? 0)
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
