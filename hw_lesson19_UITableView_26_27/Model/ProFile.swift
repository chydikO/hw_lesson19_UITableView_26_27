//
//  Profile.swift
//  hw_lesson19_UITableView
//
//  Created by OlegChudnovskiy on 23.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import Foundation

class ProFile {
    var name: String
    var avatarName: String?
    var dateOfBith: String?
    var note: String?
    
    init(name: String, avatarName: String?, dateOfBith: String?, note: String?) {
        self.name = name
        self.avatarName = avatarName
        self.dateOfBith = dateOfBith
        self.note = note
    }
    
    static func testData() -> ProFile {
        let user = ProFile(name: "John", avatarName: "profileImg", dateOfBith: "10/20/1980", note: "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.")
        
        return user
    }
}
