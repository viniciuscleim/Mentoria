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
    
    var name: String = ""
    var age: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLastNameLabel.text = name
        ageLabel.text = String(age)

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
