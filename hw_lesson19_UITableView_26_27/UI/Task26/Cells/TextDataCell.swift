//
//  TextDataCell.swift
//  hw_lesson19_UITableView_26_27
//
//  Created by OlegChudnovskiy on 23.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class TextDataCell: TableCell {

    @IBOutlet private var textView: UITextView?
    @IBOutlet var separated: UIView?
    
    var data: TextData? {
        didSet {
            if let text = data?.text {
                self.textView?.text = text
            } else {
                self.textView?.text = nil
            }
        }
    }
}

extension TextDataCell: SeparatedProtocol {
    var separatedView: UIView? {
        return separated
    }
}
