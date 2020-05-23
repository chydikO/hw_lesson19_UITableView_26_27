//
//  ProfileController.swift
//  hw_lesson19_UITableView_26_27
//
//  Created by OlegChudnovskiy on 23.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {

    @IBOutlet private var name: UILabel?
    @IBOutlet private var avatarName: UIImageView?
    @IBOutlet private var dateOfBith: UILabel?
    @IBOutlet private var note: UILabel?

    
    let profile: ProFile
    
    var data: ProFile? {
        didSet {
            name?.text = data?.name
            if let avatarName = data?.avatarName {
                self.avatarName? = UIImageView(image: UIImage(named: avatarName))
            } else {
                self.avatarName? = UIImageView()
            }
            if let dateOfBith = data?.dateOfBith {
                self.dateOfBith?.text = dateOfBith
            } else {
                self.dateOfBith?.text = nil
            }
            if let note = data?.note {
                self.note?.text = note
            } else {
                self.note?.text = nil
            }
        }
    }
    
    
    //MARK: - init
    init(profile: ProFile) {
        self.profile = profile
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
