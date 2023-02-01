//
//  Human.swift
//  Humans
//
//  Created by Илья on 12.07.2021.
//

import Foundation

struct HumanCreator {
    
    let humanType:HumanProtocol.Type
    
    init(gender:String)
    {
        let humanType:EmptyHuman.Type = HumanGenderType.classWith(value: gender) as EmptyHuman.Type
        self.humanType = humanType
    }
}
