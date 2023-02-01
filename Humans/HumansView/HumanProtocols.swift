//
//  HumanProtocols.swift
//  Humans
//
//  Created by Илья on 01.02.2023.
//

import Foundation
import UIKit

protocol HumanViewProtocol: AnyObject {
    func setFirstHumanValue(with value: String?)
    func setSecondHumanValue(with value: String?)
    func setResultHumanValue(with value: String?)
    func showHUD()
    func hideHUD()
}

protocol HumanPresenterProtocol: AnyObject {
    var router: HumanRouterProtocol! { set get }
    
    func configureView()
    func showHUD()
    func hideHUD()
    func repeatButtonClicked()
}

protocol HumanInteractorProtocol: AnyObject {
    var firstHuman : HumanProtocol { get }
    var secondHuman : HumanProtocol { get }
    var resultHuman : HumanProtocol { set get }
    func getResultHuman() -> HumanProtocol
    func compatibilityTest()
}

protocol HumanRouterProtocol: AnyObject {

}

protocol HumanConfiguratorProtocol: AnyObject {
    func configure(with viewController: HumanViewController)
}
