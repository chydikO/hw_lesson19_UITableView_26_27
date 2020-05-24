//
//  NavigationController.swift
//  My_lesson19_UITableView+Model
//
//  Created by Олег Чудновский on 10.05.2020.
//  Copyright © 2020 Олег Чудновский. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // влияет на цвет фона навигейшен бара
        self.navigationBar.barTintColor = .lightGray
        
        // задаем аттрибуты для заголовка
        self.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 22), NSAttributedString.Key.foregroundColor: UIColor.black]
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return topViewController?.supportedInterfaceOrientations ?? .all
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return topViewController?.preferredStatusBarStyle ?? .default
    }
    
    
}
