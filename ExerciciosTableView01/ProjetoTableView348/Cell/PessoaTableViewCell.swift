//
//  PessoaTableViewCell.swift
//  ProjetoTableView348
//
//  Created by Vinicius Cleim on 21/10/22.
//

import UIKit

class PessoaTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lableCell: UILabel!
    
    static let identifier: String = "PessoaTableViewCell"
    
    static func nib() -> UINib {
        
        return UINib(nibName: identifier, bundle: nil)
    }
    
    func configCell(pessoa: String) {
        
        lableCell.text = pessoa
    }
    
}
