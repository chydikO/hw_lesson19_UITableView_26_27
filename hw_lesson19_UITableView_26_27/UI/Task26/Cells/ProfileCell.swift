//
//  ProfileCell.swift
//  hw_lesson19_UITableView
//
//  Created by OlegChudnovskiy on 23.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class ProfileCell: TableCell {

    @IBOutlet private var name: UILabel?
    @IBOutlet private var avatar: UIImageView?
    
    @IBOutlet var separated: UIView?
    
    var data: ProFile? {
            didSet {
                name?.text = data?.name
                if let avatarName = data?.avatarName {
                    self.avatar? = UIImageView(image: UIImage(named: avatarName))
                } else {
                    self.avatar? = UIImageView()
                }
            }
        }
    }

    extension ProfileCell: SeparatedProtocol {
        var separatedView: UIView? {
            return separated
        }
    }
