//
//  HumanPresenter.swift
//  Humans
//
//  Created by Илья on 01.02.2023.
//

import Foundation

class HumanPresenter: HumanPresenterProtocol {

    weak var view: HumanViewProtocol!
    var interactor: HumanInteractorProtocol!
    var router: HumanRouterProtocol!
    
    required init(view: HumanViewProtocol) {
        self.view = view
    }
    
    // MARK: - MainPresenterProtocol methods
    
    func configureView() {
        view.setFirstHumanValue(with: interactor.firstHuman.fullInfo())
        view.setSecondHumanValue(with: interactor.secondHuman.fullInfo())
        genegateResult()
    }
    
    func showHUD() {
        view.showHUD()
    }
    
    func hideHUD() {
        view.hideHUD()
    }
    
    func repeatButtonClicked() {
        genegateResult()
    }
    
    private func genegateResult() {
        view.showHUD()
        interactor.compatibilityTest()
        view.hideHUD()
        view.setResultHumanValue(with: interactor.resultHuman.fullInfo())
    }
}
