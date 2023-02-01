//
//  Bool+RandomWith.swift
//  Humans
//
//  Created by Илья on 12.07.2021.
//

import Foundation

extension Bool {
    static func randomWith(persent: Float) -> Bool{
        let randomValue = Float.random(in: 0...100)
        if randomValue > persent { return false }
        else { return true }
    }
}
