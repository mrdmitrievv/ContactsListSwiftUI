//
//  ContentView.swift
//  ContactsListSwiftUI
//
//  Created by Артём Дмитриев on 04.06.2022.
//

import SwiftUI

struct ContentView: View {
    let contacts = Contact.getContacts()
    
    var body: some View {
      TabView {
        ContactsListView(contacts: contacts)
          .tabItem {
            Image(systemName: "person.3.fill")
            Text("Contacts")
          }
        DetailedContactsListView(contacts: contacts)
          .tabItem {
            Image(systemName: "phone")
            Text("Numbers")
          }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
