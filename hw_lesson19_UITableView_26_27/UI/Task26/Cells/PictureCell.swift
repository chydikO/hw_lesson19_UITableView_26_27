//
//  PictureCell.swift
//  hw_lesson19_UITableView_26_27
//
//  Created by OlegChudnovskiy on 23.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class PictureCell: TableCell {

    @IBOutlet private var picture: UIImageView?
    @IBOutlet var separated: UIView?
    
    var data: Picture? {
            didSet {
                if let pictureName = data?.name {
                    let image = UIImage(named: pictureName) ?? UIImage(named: "emptyPicture")
                    self.picture?.image = image
                } else {
                    self.picture? = UIImageView()
                }
            }
        }
    }

extension PictureCell: SeparatedProtocol {
    var separatedView: UIView? {
        return separated
    }
}
