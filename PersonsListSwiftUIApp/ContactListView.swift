//
//  ContactListView.swift
//  PersonsListSwiftUIApp
//
//  Created by Sergey on 22.09.2021.
//

import SwiftUI

struct ContactListView: View {
    let persons: [Person]
    let title: String
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(destination: DetailView(person: person)) {
                    Text(person.fullName)
                }
            }
            .listCastomView(listTitle: title)
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getContactList(), title: "Contact List")
    }
}
