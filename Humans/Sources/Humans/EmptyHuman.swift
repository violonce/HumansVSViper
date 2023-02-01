//
//  EmptyHuman.swift
//  Humans
//
//  Created by Илья on 12.07.2021.
//

import Foundation

protocol EmptyHumanProtocol:HumanProtocol{
}

class EmptyHuman: HumanProtocol{
    
    var gender: HumanGenderType = .empty
    var name:String = ""
    var surname: String = ""
    var height: Float = 0.0
    var weight: Float = 0.0
    
    required init(name: String, surname: String, height: Float, weight: Float)
    {
        self.gender = .empty
        self.name = name
        self.surname = surname
        self.height = height
        self.weight = weight
    }
    
    func talk<HumanPrototype:HumanProtocol>(human: HumanPrototype) -> Bool{
        return false
    }
    
    func endureSociety<HumanPrototype:HumanProtocol>(human: HumanPrototype) -> Bool{
        return false
    }
    
    func spendingTimeTogether<HumanPrototype:HumanProtocol>(human: HumanPrototype) -> Bool{
        return false
    }
    
    func beInRelationship(human: HumanProtocol) -> HumanProtocol{
        return EmptyHuman.init(name: "", surname: "", height: 0.0, weight: 0.0)
    }
    
    func fullInfo() -> String {
        return "ничего не вышло... разбежались..."
    }
}
