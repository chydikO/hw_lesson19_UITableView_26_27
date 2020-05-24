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
        self.tableView?.register(PictureCell.nib, forCellReuseIdentifier: PictureCell.reuseIdentifier)
        self.tableView?.register(TextDataCell.nib, forCellReuseIdentifier: TextDataCell.reuseIdentifier)

    }
    
    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cellIdentier = ""

        switch indexPath.row {
        case 1:
            cellIdentier = PictureCell.reuseIdentifier
        case 2:
            cellIdentier = TextDataCell.reuseIdentifier
        default:
            cellIdentier = ProfileCell.reuseIdentifier
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentier, for: indexPath)
        
        if let cell = cell  as? ProfileCell, let profile = dataSource[indexPath.row] as? ProFile {
            cell.data = profile
        } else if let cell = cell  as? PictureCell, let picture = dataSource[indexPath.row] as? Picture {
            cell.data = picture
        } else if let cell = cell  as? TextDataCell, let text = dataSource[indexPath.row] as? TextData {
            cell.data = text
        }
        return cell
    }
    
    //MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        super.tableView(tableView, didSelectRowAt: indexPath)
        
        if let profile = dataSource[indexPath.row] as? ProFile {
            let controller = ProfileController(profile: profile)
            self.navigationController?.pushViewController(controller, animated: true)
        } else if let picture = dataSource[indexPath.row] as? Picture {
            let controller = PictureController(picture: picture)
            self.navigationController?.pushViewController(controller, animated: true)
        } else if let textData = dataSource[indexPath.row] as? TextData {
            let controller = TextDataController(textData: textData)
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        var height: CGFloat = CGFloat()

        switch indexPath.row {
        case 1:
            height = 200
        case 2:
            height = 120
        default:
            height = 100
        }
        return height
    }
}
