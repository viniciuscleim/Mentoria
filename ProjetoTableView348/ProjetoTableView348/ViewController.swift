//
//  ViewController.swift
//  ProjetoTableView348
//
//  Created by Vinicius Cleim on 20/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var data: [String] = ["Caio", "Felipe", "Jean", "Lucas", "Andressa"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        // Do any additional setup after loading the view.
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
        
    }

}

extension ViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
        
        cell?.setupCell(name: data[indexPath.row])    
        
        return cell ?? UITableViewCell()
        
        
    }
    
    
    
    
}

extension ViewController: UITableViewDelegate {
    
    
}
