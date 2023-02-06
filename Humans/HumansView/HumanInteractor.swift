//
//  HumanInteractor.swift
//  Humans
//
//  Created by Илья on 01.02.2023.
//

import Foundation

class HumanInteractor: HumanInteractorProtocolInput {
    
    private var firstHuman: HumanProtocol!
    private var secondHuman: HumanProtocol!
    private var resultHuman: HumanProtocol!
    
    weak var output: HumanInteractorProtocolOutput!

    required init(output: HumanInteractorProtocolOutput) {
        self.output = output
    }
    
    // MARK: - HumanInteractorProtocolInput methods
    
    func generateInitialHumans() {
        //if work with network, here must be download data from server
        firstHuman = HumanCreator.init(
            gender: "M"
        ).humanType.init(
            name: "Il",
            surname: "Fed",
            height: 177,
            weight: 70
        )
        secondHuman = HumanCreator.init(
            gender: "W"
        ).humanType.init(
            name: "Ila",
            surname: "Feda",
            height: 150,
            weight: 45
        )
        self.output.initialGenegateDidEnd(firstHuman: firstHuman, secondHuman: secondHuman)
    }
    
    func compatibilityTest() {
        self.output.loadingDidBegan()
        resultHuman = firstHuman.beInRelationship(human: secondHuman)
        self.output.compatibilityTestDidEnd(resultHuman: resultHuman)
        self.output.loadingDidEnded()
    }
}
