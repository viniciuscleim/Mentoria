//
//  ViewController.swift
//  ExercicioTableView01
//
//  Created by Vinicius Cleim on 24/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var grupo: [String] = ["Vinicius", "Marcelo", "Bruno", "Lucas", "Joao"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        // Do any additional setup after loading the view.
    }
    
    private func configTableView() {
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
    }


}

extension ViewController: UITableViewDelegate {
    
    
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return grupo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
        
        cell?.configCell(pessoas: grupo[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    
    
    
    
}

