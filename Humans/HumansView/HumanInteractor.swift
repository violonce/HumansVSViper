//
//  HumanInteractor.swift
//  Humans
//
//  Created by Илья on 01.02.2023.
//

import Foundation

class HumanInteractor: HumanInteractorProtocol {
    
    var firstHuman: HumanProtocol
    {
        get {
            return HumanCreator.init(
                gender: "M"
            ).humanType.init(
                name: "Il",
                surname: "Fed",
                height: 177,
                weight: 70
            )
        }
    }
    var secondHuman: HumanProtocol {
        get {
            return HumanCreator.init(
                gender: "W"
            ).humanType.init(
                name: "Ila",
                surname: "Feda",
                height: 150,
                weight: 45
            )
        }
    }
    
    var resultHuman: HumanProtocol = EmptyHuman(name: "", surname: "", height: 0, weight: 0)
    
    weak var presenter: HumanPresenterProtocol!

    required init(presenter: HumanPresenterProtocol) {
        self.presenter = presenter
    }
    
    func compatibilityTest() {
        resultHuman = firstHuman.beInRelationship(human: secondHuman)
    }
    
    func getResultHuman() -> HumanProtocol {
        return resultHuman
    }
}
