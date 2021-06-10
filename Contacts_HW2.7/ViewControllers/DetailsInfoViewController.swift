//
//  DetailsInfoViewController.swift
//  Contacts_HW2.7
//
//  Created by Дарья Яровая on 10.06.2021.
//

import UIKit

class DetailsInfoViewController: UIViewController {
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    
    var name: String?
    var phone: String?
    var email: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = name
        phoneLabel.text = "Phone: \(phone ?? "")"
        emailLabel.text = "Email: \(email ?? "")"
    }
}
