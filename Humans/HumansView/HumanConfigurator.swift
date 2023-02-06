//
//  HumanConfigurator.swift
//  Humans
//
//  Created by Илья on 01.02.2023.
//

import Foundation

class HumanConfigurator: HumanConfiguratorProtocolInput {
    
    func configure(with viewController: HumanViewController) {
        let presenter = HumanPresenter(view: viewController)
        let interactor = HumanInteractor(output: presenter)
        let router = HumanRouter(viewController: viewController)
        
        viewController.viewOutput = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
