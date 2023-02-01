//
//  HumanConfigurator.swift
//  Humans
//
//  Created by Илья on 01.02.2023.
//

import Foundation

class HumanConfigurator: HumanConfiguratorProtocol {
    
    func configure(with viewController: HumanViewController) {
        let presenter = HumanPresenter(view: viewController)
        let interactor = HumanInteractor(presenter: presenter)
        let router = HumanRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
