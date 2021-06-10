//
//  ViewController.swift
//  Contacts_HW2.7
//
//  Created by Дарья Яровая on 09.06.2021.
//

import UIKit
protocol TabBarControllerDelegate {
    func setupContacts() -> [Person]
}

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
