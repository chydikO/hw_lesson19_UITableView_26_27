//
//  ViewController26.swift
//  hw_lesson19_UITableView
//
//  Created by OlegChudnovskiy on 20.04.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//
/*
 Реализовать экран Home Screen с таблицей (см. рисунок).
 У таблицы всего три ячейки.
 Первая ячейка – ячейка пользователя. При нажатии на нее переход на детальный экран пользователя. Высота данной ячейки – 100 пунктов.
 Вторая – ячейка с изображение. При нажатии на нее переход на детальный экран изображения. Высота данной ячейки – 200 пунктов.
 Третья ячейка – ячейка с текстовой информацией. При нажатии на нее переход на детальный экран с этой информацией. Высота данной ячейки – 120 пунктов.
 Кнопка «back» - кастомная, в виде стрелочки, без текста.
 Переходы реализовать и настроить в сторибоарде.
 Желательно добавить вспомогательные классы-модели (User, Photo, Info). Проект универсальный, поддержка всех ориентаций.
 */

import UIKit

class ViewController26: UIViewController {

    @IBOutlet private var tableView: UITableView!
        
        private let itemsCount = 10
        
        override func viewDidLoad() {
            super.viewDidLoad()

            tableView.delegate = self
            tableView.dataSource = self
        }


    }

    extension ViewController26: UITableViewDelegate {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("section = \(indexPath.section) Row = \(indexPath.row)")
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }

    // 09:36

    extension ViewController26: UITableViewDataSource {
        // number Of Rows In Section
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 3
        }
        
        // вернуть ячейку для Section для такого-то Row
        // из IndexPath мы берем Section и Row
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            // есть ли у tableView свободная ячейка с Identifier
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath)
            cell.textLabel?.text = "\(indexPath.row + 1)"
            return cell
        }
        
    /*
        // если у нас больше одной секции , Default is 1 if not implemented
        func numberOfSections(in tableView: UITableView) -> Int {
            
        }
    */
        
    }
