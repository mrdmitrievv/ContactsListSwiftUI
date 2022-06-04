//
//  SwiftUIView.swift
//  ContactsListSwiftUI
//
//  Created by Артём Дмитриев on 04.06.2022.
//

import SwiftUI

struct ContactsListView: View {
    let contacts: [Contact]
  
  var body: some View {
    NavigationView {
      List(contacts, id: \.name) { contact in
        ContactView(contact: contact)
      }
      .navigationTitle("Contact List")
    }
  }
}

struct ContactsListView_Previews: PreviewProvider {
  static var previews: some View {
    ContactsListView(contacts: Contact.getContacts())
  }
}
