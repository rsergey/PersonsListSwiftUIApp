//
//  DataManager.swift
//  PersonsListSwiftUIApp
//
//  Created by Sergey on 22.09.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()

    let names = [
        "John", "Aaron", "Tim", "Ted",
        "Steven", "Sharon", "Nicola",
        "Allan", "Bruce", "Carl"
    ]
    
    let surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth",
        "Jankin", "Butler", "Black", "Robertson",
        "Murphy", "Williams"
    ]
    
    let emails = [
        "aaa@mail.com", "bbb@mail.com", "ccc@mail.com",
        "ddd@mail.com", "eee@mail.com", "fff@mail.com",
        "ggg@mail.com", "hhh@mail.com", "iii@mail.com",
        "jjj@mail.com"
    ]
    
    let phones = [
        "111-11-11", "222-22-22", "333-33-33", "444-44-44",
        "555-55-55", "666-66-66", "777-77-77", "888-88-88",
        "999-99-99", "000-00-000"
    ]
    
    private init() {}
    
}
