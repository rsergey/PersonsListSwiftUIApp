//
//  DetailView.swift
//  PersonsListSwiftUIApp
//
//  Created by Sergey on 22.09.2021.
//

import SwiftUI

struct DetailView: View {
    let person: Person
    
    var body: some View {
        List {
            Group {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
            }
            .frame(maxWidth: .infinity, alignment: .center)
            ContactInfoView(person: person, contactType: .phone)
            ContactInfoView(person: person, contactType: .email)
        }
        .listCastomView(listTitle: person.fullName)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(person: Person.getContactList().first!)
    }
}
