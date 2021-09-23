//
//  NumbersListView.swift
//  PersonsListSwiftUIApp
//
//  Created by Sergey on 22.09.2021.
//

import SwiftUI

struct NumbersListView: View {
    let persons: [Person]
    let title: String
        
    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { person in
                    Section(header: Text(person.fullName).font(.title3)) {
                        ContactInfoView(person: person, contactType: .phone)
                        ContactInfoView(person: person, contactType: .email)
                    }
                }
            }
            .listCastomView(listTitle: title)
        }
    }
}

struct NumbersListView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersListView(persons: Person.getContactList(), title: "Contact List")
    }
}
