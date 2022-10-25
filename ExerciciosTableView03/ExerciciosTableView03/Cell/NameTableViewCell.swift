//
//  NameTableViewCell.swift
//  ExerciciosTableView03
//
//  Created by Vinicius Cleim on 25/10/22.
//

import UIKit

class NameTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabelCell: UILabel!
    
    
    @IBOutlet weak var imageViewCell: UIImageView!
    
    static let identifier: String = "NameTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    func configCell(pessoa: Pessoa) {
        nameLabelCell.text = pessoa.nome
        imageViewCell.image = UIImage(named: pessoa.carroUsuario)
    }

    
    
    
}
