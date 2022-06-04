//
//  ContactView.swift
//  ContactsListSwiftUI
//
//  Created by Артём Дмитриев on 04.06.2022.
//

import SwiftUI

struct ContactView: View {
    let contact: Contact
    
    var body: some View {
        NavigationLink("\(contact.fullName)",
                       destination: ContactDetailsView(contact: contact))
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(contact: Contact.getContacts()[0])
    }
}
