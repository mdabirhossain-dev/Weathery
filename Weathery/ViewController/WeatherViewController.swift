//
// 
// FileName: WeatherViewController.swift
// ProjectName: Weathery
//
// Created by MD ABIR HOSSAIN on 26-11-2023 at 7:20 AM
// Website: https://mdabirhossain.com/
//


import UIKit

class WeatherViewController: UIViewController {
    
    let backgroundView = UIImageView()
    let locationButton = UIButton()
    let searchButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        style()
        layout()
    }
    
    
}


extension WeatherViewController {
    
    func style() {
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.image = UIImage(named: "background")
        backgroundView.contentMode = .scaleAspectFill
        
        locationButton.translatesAutoresizingMaskIntoConstraints = false
        locationButton.setBackgroundImage(UIImage(systemName: "location.circle.fill"), for: .normal)
        locationButton.tintColor = .label
        
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        searchButton.setBackgroundImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchButton.tintColor = .label
    }
    
    func layout() {
        
        view.addSubview(backgroundView)
        view.addSubview(locationButton)
        view.addSubview(searchButton)
        
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            locationButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            locationButton.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1), // multiplier 1 == 8 points
            locationButton.widthAnchor.constraint(equalToConstant: 40),
            locationButton.heightAnchor.constraint(equalToConstant: 40),
            
            searchButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            searchButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8), // multiplier 1 == 8 points
            searchButton.widthAnchor.constraint(equalToConstant: 40),
            searchButton.heightAnchor.constraint(equalToConstant: 40),
        ])
        
    }
    
}
