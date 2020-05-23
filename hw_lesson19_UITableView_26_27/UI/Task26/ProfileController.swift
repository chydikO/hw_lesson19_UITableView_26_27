//
//  ProfileController.swift
//  hw_lesson19_UITableView_26_27
//
//  Created by OlegChudnovskiy on 23.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class ProfileController: ViewController {
    
    @IBOutlet private var name: UILabel?
    @IBOutlet private var avatar: UIImageView?
    @IBOutlet private var dateOfBith: UILabel?
    @IBOutlet private var note: UILabel?
    
    private var data: ProFile?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "User Profile"
        setData()
    }
    
    private func setData() {
        self.name?.text = self.data?.name
        if let avatarName = self.data?.avatarName {
            self.avatar?.image = UIImage(named: avatarName)
        } else {
            self.avatar? = UIImageView()
        }
        if let dateOfBith = self.data?.dateOfBith {
            self.dateOfBith?.text = dateOfBith
        } else {
            self.dateOfBith?.text = nil
        }
        if let note = self.data?.note {
            self.note?.text = note
        } else {
            self.note?.text = nil
        }
    }
    
    //MARK: - init
    
    init(profile: ProFile) {
        self.data = profile
        super.init(nibName: ProfileController.className, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
