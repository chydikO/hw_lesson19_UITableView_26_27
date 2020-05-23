//
//  ViewController27.swift
//  hw_lesson19_UITableView
//
//  Created by OlegChudnovskiy on 20.04.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//
/*
 Тема: UITabBarController, UITabBar, UITabBarItem, UITabBarControllerDelegate, UITabBarDelegate
 Создать TarbarController с тремя ViewControllers (Home, About, Contacts);
 Home View Controller – экран содержит большую картинку по центру (даже при повороте картинка должна оставаться по центру). Вверху справа на навигейшен баре находится кнопка info. При нажатии на нее – переход на Info View Controller, который содержит текстовую информацию (отображаем ее в UITextView)
 About View Controller – экран содержит текстовую информацию (отображаем ее в UITextView)
 Contacts View Controller – экран со списком контактов. Создать дополнительный класс-модель Contact (имя, фамилия, фото, массив телефонов, массив emails). В ячейках отображать фото, имя и фамилию. Высота ячеек постоянна.
 При нажатии на ячейку с контактом сделать переход на детальный экран контакта – User Info Controller.
 User Info Controller – содержит информацию о пользователе: фото поцентру, ниже имя, фамилия, далее массив телефонов и массив emails.
 Кнопку “Back” для навигейшен бара использовать кастомную (только иконка, без текста).
 Проект универсальный, поддержка всех ориентаций.
 */

import UIKit

class ViewController27: UIViewController {

    @IBOutlet private var tableView: UITableView!
        
        private let itemsCount = 1
        
        override func viewDidLoad() {
            super.viewDidLoad()

            tableView.delegate = self
            tableView.dataSource = self
        }


    }

    extension ViewController27: UITableViewDelegate {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("section = \(indexPath.section) Row = \(indexPath.row)")
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }

    // 09:36

    extension ViewController27: UITableViewDataSource {
        // number Of Rows In Section
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 10
        }
        
        // вернуть ячейку для Section для такого-то Row
        // из IndexPath мы берем Section и Row
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            // есть ли у tableView свободная ячейка с Identifier
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell_id_1", for: indexPath)
            cell.textLabel?.text = "\(indexPath.row + 1)"
            return cell
        }
        
    /*
        // если у нас больше одной секции , Default is 1 if not implemented
        func numberOfSections(in tableView: UITableView) -> Int {
            
        }
    */
        
    }
