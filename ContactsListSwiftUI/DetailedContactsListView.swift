//
//  DetailedContactsListView.swift
//  ContactsListSwiftUI
//
//  Created by Артём Дмитриев on 04.06.2022.
//

import SwiftUI

struct DetailedContactsListView: View {
    let contacts: [Contact]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts, id: \.name) { contact in
                    Section(header: Text("\(contact.fullName)")) {
                        ContactInfo(imageSystemName: Contacts.phone.rawValue, telephoneNumber: contact.telephoneNumber)
                        ContactInfo(imageSystemName: Contacts.email.rawValue, telephoneNumber: contact.email)
                    }
                }
            }
            .navigationTitle("Contact List")
        }

    }
}

struct DetailedContactsListView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactsListView(contacts: Contact.getContacts())
    }
}
