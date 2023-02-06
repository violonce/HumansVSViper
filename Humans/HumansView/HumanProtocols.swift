//
//  HumanProtocols.swift
//  Humans
//
//  Created by Илья on 01.02.2023.
//

import Foundation
import UIKit

protocol HumanViewProtocolInput: AnyObject {
    func setFirstHumanValue(with value: String?)
    func setSecondHumanValue(with value: String?)
    func setResultHumanValue(with value: String?)
    func showHUD()
    func hideHUD()
}

protocol HumanViewProtocolOutput: AnyObject {
    func configureView()
    func repeatButtonClicked()
}

protocol HumanInteractorProtocolInput: AnyObject {
    func generateInitialHumans()
    func compatibilityTest()
}

protocol HumanInteractorProtocolOutput: AnyObject {
    func loadingDidBegan()
    func loadingDidEnded()
    func initialGenegateDidEnd(firstHuman: HumanProtocol, secondHuman: HumanProtocol)
    func compatibilityTestDidEnd(resultHuman: HumanProtocol)
}

protocol HumanRouterProtocolInput: AnyObject {
}

protocol HumanConfiguratorProtocolInput: AnyObject {
    func configure(with viewController: HumanViewController)
}
