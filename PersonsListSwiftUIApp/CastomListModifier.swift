//
//  CastomListModifier.swift
//  PersonsListSwiftUIApp
//
//  Created by Sergey on 23.09.2021.
//

import SwiftUI

struct CastomListView: ViewModifier {
    let viewTitle: String
    
    func body(content: Content) -> some View {
        content
            .navigationTitle(viewTitle)
            .listStyle(InsetGroupedListStyle())
    }
}

extension View {
    func listCastomView(listTitle: String) -> some View {
        modifier(CastomListView(viewTitle: listTitle))
    }
}
