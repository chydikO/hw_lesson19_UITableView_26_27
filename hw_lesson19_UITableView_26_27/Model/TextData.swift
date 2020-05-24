//
//  TextData.swift
//  hw_lesson19_UITableView
//
//  Created by OlegChudnovskiy on 23.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import Foundation

class TextData {
    let text: String
    
    init(text: String) {
        self.text = text
    }
    
    static func testData() -> TextData {
        let text = TextData(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Massa enim nec dui nunc mattis enim. Eu turpis egestas pretium aenean pharetra magna ac. Tortor aliquam nulla facilisi cras fermentum odio eu. Faucibus et molestie ac feugiat. Sed velit dignissim sodales ut eu sem integer vitae. Molestie ac feugiat sed lectus. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa. Mauris vitae ultricies leo integer malesuada. Massa sed elementum tempus egestas sed sed. A cras semper auctor neque.\nSodales neque sodales ut etiam sit amet nisl purus in. Ultrices in iaculis nunc sed. Nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur. Adipiscing vitae proin sagittis nisl rhoncus. Sed vulputate mi sit amet. Ut faucibus pulvinar elementum integer. Habitant morbi tristique senectus et netus et malesuada. Scelerisque varius morbi enim nunc faucibus. Lorem ipsum dolor sit amet consectetur adipiscing. Adipiscing elit pellentesque habitant morbi. Eget mi proin sed libero enim sed faucibus turpis. Sapien pellentesque habitant morbi tristique. Mattis aliquam faucibus purus in massa tempor nec. Diam sit amet nisl suscipit adipiscing bibendum est ultricies.\nTurpis cursus in hac habitasse platea dictumst quisque. Vel quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Ante in nibh mauris cursus mattis molestie a iaculis. Nulla posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus. Eget est lorem ipsum dolor sit amet consectetur. Consequat mauris nunc congue nisi vitae suscipit tellus mauris a. Tortor dignissim convallis aenean et. Sagittis purus sit amet volutpat. Egestas pretium aenean pharetra magna ac placerat. Scelerisque purus semper eget duis. Cursus sit amet dictum sit amet justo donec enim diam. Bibendum ut tristique et egestas quis ipsum suspendisse. Dignissim sodales ut eu sem integer.\nQuis viverra nibh cras pulvinar mattis nunc sed. Lectus proin nibh nisl condimentum id venenatis a condimentum vitae. Tristique risus nec feugiat in. Amet porttitor eget dolor morbi non arcu. Enim eu turpis egestas pretium aenean pharetra magna ac. Quam quisque id diam vel quam elementum pulvinar. A erat nam at lectus. In massa tempor nec feugiat nisl pretium fusce id. Nisi lacus sed viverra tellus in. Id venenatis a condimentum vitae sapien pellentesque habitant. Euismod nisi porta lorem mollis aliquam ut porttitor leo. Nunc scelerisque viverra mauris in aliquam sem fringilla.")
        return text
    }
}
