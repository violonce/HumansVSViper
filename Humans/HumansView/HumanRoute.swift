//
//  HumanRoute.swift
//  Humans
//
//  Created by Илья on 01.02.2023.
//

import Foundation

class HumanRouter: HumanRouterProtocolInput {
    
    weak var viewController: HumanViewController!
    
    init(viewController: HumanViewController) {
        self.viewController = viewController
    }
}
