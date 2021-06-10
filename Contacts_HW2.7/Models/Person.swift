//
//  Person.swift
//  Contacts_HW2.7
//
//  Created by Дарья Яровая on 09.06.2021.
//

struct Person {
    var firstName: String = ""
    var lastName: String = ""
    var phone: String = ""
    var email: String = ""
    
    static func getContacts() -> [Person] {
        let firstNamesData = DataManager().firstNames.shuffled()
        let lastNamesData = DataManager().lastNames.shuffled()
        let phonesData = DataManager().phones.shuffled()
        let emailsData = DataManager().emails.shuffled()

        var contacts = [Person] ()
        for index in 0...firstNamesData.count - 1 {
            contacts.append(
                Person(
                    firstName: firstNamesData[index],
                    lastName: lastNamesData[index],
                    phone: phonesData[index],
                    email: emailsData[index]
                )
            )
        }
        return contacts
    }
}
