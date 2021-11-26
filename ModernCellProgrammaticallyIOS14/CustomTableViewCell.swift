//
//  CustomTableViewCell.swift
//  ModernCellProgrammaticallyIOS14
//
//  Created by Pandos on 26.11.2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    static let identifier = "CustomTableViewCell"
    
    // Эта функция вызывается API для ячеек, созданных для tableView
    //Обновляет конфигурацию ячейки, используя текущее состояние. Он управляется автоматически за кулисами
    
    override func updateConfiguration(using state: UICellConfigurationState) {
        
    // Поскольку мы переопределяем функцию, мы должны наследовать все ранее определенные свойства и функции, чтобы мы не пропустили ничего неизвестного или невидимого для нас.
        super.updateConfiguration(using: state)
        // Конфигурация ячейки по умолчанию
        // после получения конфигураци настраиваем ячейку своим содержимым
        var contentConfig = defaultContentConfiguration().updated(for: state)
                contentConfig.text = "Hello World"
                contentConfig.image = UIImage(systemName: "bell")
        // фоновая конфигурация по умолчанию, настраиваем отображение фона итд
                var backgroundConfig = backgroundConfiguration?.updated(for: state)
                backgroundConfig?.backgroundColor = .purple
        // настройка вида ячейки при ее нажатии
                if state.isHighlighted || state.isSelected {
                    backgroundConfig?.backgroundColor = .orange
                    contentConfig.textProperties.color = .red
                    contentConfig.imageProperties.tintColor = .yellow
                }
          // назначаем свою конфигурацию в качестве текущей
                contentConfiguration = contentConfig
                backgroundConfiguration = backgroundConfig
    }
    
}
