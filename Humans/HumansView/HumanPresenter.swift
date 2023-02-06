//
//  HumanPresenter.swift
//  Humans
//
//  Created by Илья on 01.02.2023.
//

import Foundation

class HumanPresenter: HumanViewProtocolOutput, HumanInteractorProtocolOutput {

    weak var view: HumanViewProtocolInput!
    var interactor: HumanInteractorProtocolInput!
    var router: HumanRouterProtocolInput!
    
    required init(view: HumanViewProtocolInput) {
        self.view = view
    }
    
    // MARK: - HumanViewProtocolOutput methods
    
    func configureView() {
        interactor.generateInitialHumans()
        interactor.compatibilityTest()
    }
    
    func repeatButtonClicked() {
        genegateResult()
    }
    
    // MARK: - HumanInteractorProtocolOutput methods
    
    func loadingDidBegan () {
        view.showHUD()
    }
    
    func loadingDidEnded() {
        view.hideHUD()
    }
    
    func compatibilityTestDidEnd(resultHuman: HumanProtocol) {
        view.setResultHumanValue(with: resultHuman.fullInfo())
    }
    
    func initialGenegateDidEnd(firstHuman: HumanProtocol, secondHuman: HumanProtocol) {
        view.setFirstHumanValue(with: firstHuman.fullInfo())
        view.setSecondHumanValue(with: secondHuman.fullInfo())
    }
    
    // MARK: - private methods
    
    private func genegateResult() {
        interactor.compatibilityTest()
    }
}
