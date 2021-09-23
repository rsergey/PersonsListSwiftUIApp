//
//  ContentView.swift
//  PersonsListSwiftUIApp
//
//  Created by Sergey on 22.09.2021.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactListView(persons: persons, title: "Contact List")
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            NumbersListView(persons: persons, title: "Contact List")
                .tabItem {
                    Image(systemName: "phone.fill")
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
