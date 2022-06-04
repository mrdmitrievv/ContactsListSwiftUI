//
//  Contact.swift
//  ContactsListSwiftUI
//
//  Created by Артём Дмитриев on 04.06.2022.
//

import Foundation

class Contact {
  var name: String
  var surname: String
  var telephoneNumber: String
  var email: String
  
  var fullName: String {
    "\(name) \(surname)"
  }
  
  init(name: String, surname: String, telephoneNumber: String, email: String) {
    self.name = name
    self.surname = surname
    self.telephoneNumber = telephoneNumber
    self.email = email
  }
}

extension Contact {
  static func getContacts() -> [Contact] {
    var contactsList = [Contact]()
    
    let names = DataManager.shared.names.shuffled()
    let surnames = DataManager.shared.surnames.shuffled()
    let emails = DataManager.shared.emails.shuffled()
    let telephoneNumbers = DataManager.shared.telephoneNumbers.shuffled()
    
    for index in (0..<names.count) {
      let contact = Contact(name: names[index],
                            surname: surnames[index],
                            telephoneNumber: telephoneNumbers[index],
                            email: emails[index])
      contactsList.append(contact)
    }
    
    return contactsList
  }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
