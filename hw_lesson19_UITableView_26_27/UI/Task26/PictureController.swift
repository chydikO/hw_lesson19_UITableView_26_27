//
//  PictureController.swift
//  hw_lesson19_UITableView_26_27
//
//  Created by OlegChudnovskiy on 24.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class PictureController: ViewController {
    @IBOutlet private var picture: UIImageView?

    private var data: Picture?

    override func viewDidLoad() {
       super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "Photo"
        setData()
    }
     private func setData() {
            if let pictureName = self.data?.name {
                let image = UIImage(named: pictureName) ?? UIImage(named: "emptyPicture")
                self.picture?.image = image
            } else {
                self.picture? = UIImageView()
            }
        }
        
        //MARK: - init
        
        init(picture: Picture) {
            self.data = picture
            super.init(nibName: PictureController.className, bundle: nil)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
