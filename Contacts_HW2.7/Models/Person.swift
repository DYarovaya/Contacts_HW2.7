//
//  Person.swift
//  Contacts_HW2.7
//
//  Created by Дарья Яровая on 09.06.2021.
//

struct Person {
    var firstNames: String = ""
    var lastNames: String = ""
    var phones: String = ""
    var emails: String = ""
    

    
    static func getPerson() -> [Person] {
        let firstNamesData = DataManager().firstNames.shuffled()
        let lastNamesData = DataManager().lastNames.shuffled()
        let phonesData = DataManager().phones.shuffled()
        let emailsData = DataManager().emails.shuffled()

        var contacts = [Person] ()
        for index in 0...firstNamesData.count - 1 {
            contacts.append(
                Person(
                    firstNames: firstNamesData[index],
                    lastNames: lastNamesData[index],
                    phones: phonesData[index],
                    emails: emailsData[index]
                )
            )
        }
        
        return contacts
        
    }
}
