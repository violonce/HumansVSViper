//
//  ViewController.swift
//  Humans
//
//  Created by Илья on 09.07.2021.
//

import UIKit


class HumanViewController: UIViewController, HumanViewProtocol {
    
    @IBOutlet private weak var humanFirst: UILabel!
    @IBOutlet private weak var humanSecond: UILabel!
    @IBOutlet private weak var buttonRepeat: UIButton!
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var HUDView: UIView!
    @IBOutlet private weak var activityIndicator: UIActivityIndicatorView!
    
    
    var presenter: HumanPresenterProtocol!
    var configurator: HumanConfiguratorProtocol = HumanConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        presenter.configureView()
    }
    
    func setFirstHumanValue(with value: String?) {
        humanFirst.text = value
    }
    
    func setSecondHumanValue(with value: String?) {
        humanSecond.text = value
    }
    
    func setResultHumanValue(with value: String?) {
        resultLabel.text = value
    }
    
    @IBAction func repeatButtonAction(_ sender: Any) {
        presenter.repeatButtonClicked()
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

}

