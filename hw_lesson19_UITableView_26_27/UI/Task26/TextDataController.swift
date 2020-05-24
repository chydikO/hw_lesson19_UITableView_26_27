//
//  TextDataController.swift
//  hw_lesson19_UITableView_26_27
//
//  Created by OlegChudnovskiy on 24.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class TextDataController: ViewController {
    
    @IBOutlet private var textView: UITextView?

   private var data: TextData?

    override func viewDidLoad() {
       super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "Info"
        setData()
    }
    private func setData() {
        if let text = data?.text {
            self.textView?.text = text
        } else {
            self.textView?.text = nil
        }
    }
    
    //MARK: - init
    
    init(textData: TextData) {
        self.data = textData
        super.init(nibName: TextDataController.className, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

