//
//  ViewController.swift
//  ProjetoTableView348
//
//  Created by Vinicius Cleim on 20/10/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView!
    
    var pessoas: [String] = ["Vinicius", "Marcelo", "Bruno", "Lucas", "Joao"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        
        // Do any additional setup after loading the view.
    }
    
    private func configTableView() {
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(PessoaTableViewCell.nib(), forCellReuseIdentifier: PessoaTableViewCell.identifier)
    }
    

}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return pessoas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PessoaTableViewCell.identifier, for: indexPath) as? PessoaTableViewCell
        
        cell?.configCell(pessoa: pessoas[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    
    
}

    

