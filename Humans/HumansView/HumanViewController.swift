//
//  ViewController.swift
//  Humans
//
//  Created by Илья on 09.07.2021.
//

import UIKit


class HumanViewController: UIViewController, HumanViewProtocolInput {
    
    @IBOutlet private weak var humanFirst: UILabel!
    @IBOutlet private weak var humanSecond: UILabel!
    @IBOutlet private weak var buttonRepeat: UIButton!
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var HUDView: UIView!
    @IBOutlet private weak var activityIndicator: UIActivityIndicatorView!
    
    
    var viewOutput: HumanViewProtocolOutput!
    var configurator: HumanConfiguratorProtocolInput = HumanConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        viewOutput.configureView()
    }
    
    // MARK: - HumanViewProtocolInput methods
    
    func setFirstHumanValue(with value: String?) {
        humanFirst.text = value
    }
    
    func setSecondHumanValue(with value: String?) {
        humanSecond.text = value
    }
    
    func setResultHumanValue(with value: String?) {
        resultLabel.text = value
    }
    
    func showHUD() {
        DispatchQueue.main.async { [weak self] in
            self!.view.bringSubviewToFront(self!.HUDView)
            self!.activityIndicator.alpha = 1
            UIView.animate(withDuration: 0.5) { [weak self] in
                self!.HUDView.alpha = 1
            }
        }
    }
    
    func hideHUD() {
        DispatchQueue.main.async { [weak self] in
            UIView.animate(withDuration: 0.5) { [weak self] in
                self!.HUDView.alpha = 0
            }
        }
    }
    
    // MARK: - actions methods
    
    @IBAction func repeatButtonAction(_ sender: Any) {
        viewOutput.repeatButtonClicked()
    }

}

