//
//  ContactDetailsView.swift
//  ContactsListSwiftUI
//
//  Created by Артём Дмитриев on 04.06.2022.
//

import SwiftUI

struct ContactDetailsView: View {
    let contact: Contact
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 130, height: 130, alignment: .center)
            ContactInfo(imageSystemName: Contacts.phone.rawValue,
                        telephoneNumber: contact.telephoneNumber)
            ContactInfo(imageSystemName: Contacts.email.rawValue,
                        telephoneNumber: contact.email)
            Spacer()
        }
        .navigationTitle("\(contact.fullName)")
        .padding()
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: Contact.getContacts()[0])
    }
}

struct ContactInfo: View {
    let imageSystemName: String
    let telephoneNumber: String
    
    var body: some View {
        HStack {
            Image(systemName: imageSystemName)
                .foregroundColor(.blue)
            Text("\(telephoneNumber)")
                .font(.title3)
            Spacer()
        }
    }
}
