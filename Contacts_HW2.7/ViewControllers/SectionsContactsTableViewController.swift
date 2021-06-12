//
//  SectionsContactsTableViewController.swift
//  Contacts_HW2.7
//
//  Created by Дарья Яровая on 09.06.2021.
//

import UIKit

class SectionsContactsTableViewController: UITableViewController {
    private let contacts = Person.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Contacts"
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let contact = contacts[section]
        return "\(contact.firstName) \(contact.lastName)"
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = contacts[indexPath.section].phone
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = contacts[indexPath.section].email
            content.image = UIImage(systemName: "mail")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
}
