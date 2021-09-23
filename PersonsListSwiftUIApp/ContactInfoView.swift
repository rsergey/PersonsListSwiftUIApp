//
//  ContactInfoView.swift
//  PersonsListSwiftUIApp
//
//  Created by Sergey on 23.09.2021.
//

import SwiftUI

struct ContactInfoView: View {
    let person: Person
    let contactType: ContactType
    
    var body: some View {
        switch contactType {
        case .phone:
            HStack {
                Image(systemName: contactType.rawValue)
                    .foregroundColor(.blue)
                Text(person.phoneNumber)
            }
        case .email:
            HStack {
                Image(systemName: contactType.rawValue)
                    .foregroundColor(.blue)
                Text(person.email)
            }
        }
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(person: Person.getContactList().first!, contactType: .phone)
    }
}
