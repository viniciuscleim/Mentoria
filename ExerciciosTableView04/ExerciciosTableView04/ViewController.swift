//
//  ViewController.swift
//  ExerciciosTableView04
//
//  Created by Vinicius Cleim on 25/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    //    var carro: Car = Car(nameBrand: <#T##String#>,nameImageBrand: <#T##String#>)
    //
    //    var carros: [Car] = [Car(nameBrand: <#T##String#>, nameImageBrand: <#T##String#>), Car(nameBrand: <#T##String#>, nameImageBrand: <#T##String#>), Car(nameBrand: <#T##String#>, nameImageBrand: <#T##String#>)]
    
    var carros: [Car] = [Car(nameBrandCar: "Volkswagen", imageCar: "Volkswagen"), Car(nameBrandCar: "Ferrari", imageCar: "Ferrari"), Car(nameBrandCar: "Fiat", imageCar: "Fiat"), Car(nameBrandCar: "Lamborghini", imageCar: "Lamborghini"), Car(nameBrandCar: "Maserati", imageCar: "Maserati")]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        // Do any additional setup after loading the view.
    }
    
    private func configTableView() {
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(DetailCarTableViewCell.nib(), forCellReuseIdentifier: DetailCarTableViewCell.identifier)
        
    }


}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
        
    }
    
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DetailCarTableViewCell.identifier, for: indexPath) as? DetailCarTableViewCell
        
        cell?.configCell(car: carros[indexPath.row])
        
        return cell ?? UITableViewCell()
        
    }
    
    
}

