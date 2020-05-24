//
//  ViewController.swift
//  My_lesson19_UITableView+Model
//
//  Created by Олег Чудновский on 10.05.2020.
//  Copyright © 2020 Олег Чудновский. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .groupTableViewBackground

        setupNavigationButtons()
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .all
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
    
    //MARK: - NavigationButtons
    func setupNavigationButtons() {
        // back
        // если текущий не рутовый контролер
        if self != self.navigationController?.viewControllers.first {
            // create back button
            self.navigationItem.leftBarButtonItem = self.createBackButton()
        }
    }
    
    func createBackButton() -> UIBarButtonItem? {
        let backButton = UIBarButtonItem(image: UIImage(named: "backButton"),
                                         style: UIBarButtonItem.Style.done,
                                         target: self,
                                         action: #selector(backButtonClicked))
        return backButton
    }
    
    @IBAction func backButtonClicked() {
        self.navigationController?.popViewController(animated: true)
    }
}
