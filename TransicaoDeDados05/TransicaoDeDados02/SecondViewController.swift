//
//  SecondViewController.swift
//  TransicaoDeDados02
//
//  Created by Vinicius Cleim on 18/10/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameLastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var vinicius: Pessoa?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLastNameLabel.text = vinicius?.fullName
        ageLabel.text = String(vinicius?.age ?? 0)
        

        // Do any additional setup after loading the view.
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
