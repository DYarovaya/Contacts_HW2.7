//
//  SimpleContactsTableViewController.swift
//  Contacts_HW2.7
//
//  Created by Дарья Яровая on 09.06.2021.
//

import UIKit

class SimpleContactsTableViewController: UITableViewController {
    private var contacts = Person.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = 50
        navigationItem.leftBarButtonItem = editButtonItem
        navigationItem.title = "Contacts"
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        
        let contact = contacts[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = "\(contact.firstName) \(contact.lastName)"
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentContact = contacts.remove(at: fromIndexPath.row)
        contacts.insert(currentContact, at: destinationIndexPath.row)
    }
}

extension SimpleContactsTableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? DetailsInfoViewController,
              let indexPath = tableView.indexPathForSelectedRow
        else { return }
        
        let contact = contacts[indexPath.row]
        vc.name = "\(contact.firstName) \(contact.lastName)"
        vc.email = contact.email
        vc.phone = contact.phone
    }
}
