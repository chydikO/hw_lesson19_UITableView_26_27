//
//  Picture.swift
//  hw_lesson19_UITableView
//
//  Created by OlegChudnovskiy on 23.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import Foundation

class Picture {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    static func testData() -> Picture {
        let picture = Picture(name: "picture")
        
        return picture
    }
}
