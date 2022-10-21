//
//  NameTableViewCell.swift
//  ProjetoTableView348
//
//  Created by Vinicius Cleim on 20/10/22.
//

import UIKit



class NameTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "NameTableViewCell"
    
    
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    // ciclo de vida da celula -> como se fosse a viewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(name: String) {
        
        nameLabel.text = name
        
    }

    
}
