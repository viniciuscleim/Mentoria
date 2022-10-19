//
//  SecondViewController.swift
//  TransicaoDeDados02
//
//  Created by Vinicius Cleim on 18/10/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var fullNameMentorLabel: UILabel!
    @IBOutlet weak var ageMentorLabel: UILabel!
    
    var vini: Pessoa?
    var celo: Pessoa?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        
      
        

        // Do any additional setup after loading the view.
    }
    
    private func configView() {
        fullNameLabel.text = "\(vini?.nome ?? "") \(vini?.sobrenome ?? "")"
        ageLabel.text = String(vini?.idade ?? 0)
        fullNameMentorLabel.text = "\(celo?.nome ?? "") \(celo?.sobrenome ?? "")"
        ageMentorLabel.text = String(celo?.idade ?? 0)
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
