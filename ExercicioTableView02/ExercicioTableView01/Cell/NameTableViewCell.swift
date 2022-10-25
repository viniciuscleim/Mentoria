//
//  NameTableViewCell.swift
//  ExercicioTableView01
//
//  Created by Vinicius Cleim on 25/10/22.
//

import UIKit

class NameTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "NameTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    func configCell(pessoas: String) {
        
        nameLabel.text = pessoas
 }
    
//    func receberNome(nome: String) {
//        nameLabel.text = nome
//    }
    
}
