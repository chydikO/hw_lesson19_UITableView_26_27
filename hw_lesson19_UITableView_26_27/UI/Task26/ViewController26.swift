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

class ViewController26: TableViewController {

    //MARK: - setup
    override func setup() {
        super.setup()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource.append(contentsOf: [ProFile.testData(), Picture.testData(), TextData.testData()])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.title = "Home Screen"
    }
    
    override func registerCells() {
        self.tableView?.register(ProfileCell.nib, forCellReuseIdentifier: ProfileCell.reuseIdentifier)
    }
    
    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProfileCell.reuseIdentifier, for: indexPath)
        if let cell = cell  as? ProfileCell, let profile = dataSource[indexPath.row] as? ProFile {
            cell.data = profile
        }
        return cell
    }
    
    //MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        super.tableView(tableView, didSelectRowAt: indexPath)
        
        if let profile = dataSource[indexPath.row] as? ProFile {
            let controller = ProfileController(profile: profile)
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
}
