//
//  ViewController.swift
//  ExerciciosTableView03
//
//  Created by Vinicius Cleim on 25/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var grupo: [Pessoa] = [Pessoa(nome: "Vinicius", sobrenome: "Cleim", idade: 32, carroUsuario: "car"), Pessoa(nome: "Caio", sobrenome: "Fabrini", idade: 28, carroUsuario: "car"), Pessoa(nome: "Marcelo", sobrenome: "Falcao", idade: 27, carroUsuario: "car"), Pessoa(nome: "Joao", sobrenome: "Silva", idade: 25, carroUsuario: "car"), Pessoa(nome: "Andre", sobrenome: "Araujo", idade: 34, carroUsuario: "car")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    private func configTableView() {
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
        
    }


}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
        
    }
    
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return grupo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
        
        cell?.configCell(pessoa: grupo[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    
}

