//
//  DetailCarTableViewCell.swift
//  ExerciciosTableView04
//
//  Created by Vinicius Cleim on 25/10/22.
//

import UIKit

class DetailCarTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var brandImageView: UIImageView!
    
    
    @IBOutlet weak var labelCell: UILabel!
    
    static let identifier: String = "DetailCarTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    func configCell(car: Car) {
        
        labelCell.text = car.nameBrandCar
        brandImageView.image = UIImage(named: car.imageCar)
    }

    
    
    

    
}
