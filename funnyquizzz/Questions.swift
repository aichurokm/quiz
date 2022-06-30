//
//  Questions.swift
//  funnyquizzz
//
//  Created by Aichurok Maralbek kyzy on 27/6/22.
//

import Foundation

enum Questions{
    case one
    case two
    case three
    case four
    case five
    
    var title: String{
        switch self {
        case .one:
            return "Правдa ли, что утенок считает мамой, кого увидел первым после рождения?"
        case .two:
            return "Правдa ли у осминого два сердца?"
        case .three:
            return "Правдa ли,что черепахи плачут?"
        case .four:
            return "Правдa ли, что слоны высоко прыгают?"
        case .five:
            return "Правдa ли, что зебры бегают зигзагами?"
        }
    }
    var answer: String{
        switch self {
        case .one:
            return "Да"
        case .two:
            return "Нет"
        case .three:
            return "Да"
        case .four:
            return "Нет"
        case .five:
            return "Да"
        }
    }
}
