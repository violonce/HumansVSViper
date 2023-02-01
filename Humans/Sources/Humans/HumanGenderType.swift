//
//  HumanGenderType.swift
//  Humans
//
//  Created by Илья on 01.02.2023.
//

import Foundation

enum HumanGenderType {
    case boy
    case girl
    case empty
    
    private static func typeWith(value: String) -> HumanGenderType?{
        switch value {
        case "M":
            return .boy
        case "W":
            return .girl
        default:
            return .empty
        }
    }
    
    static func classWith<Human:EmptyHuman>(value: String) -> Human.Type{
        switch self.typeWith(value:value) {
        case .boy:
            return Boy.self as! Human.Type
        case .girl:
            return Girl.self as! Human.Type
        default:
            return EmptyHuman.self as! Human.Type
        }
    }
    
    func value(type: HumanGenderType) -> String{
        switch type {
        case .boy:
            return "Boy"
        case .girl:
            return "Girl"
        default:
            return "Empty Human"
        }
    }
}
