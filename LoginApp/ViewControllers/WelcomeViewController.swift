//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Руслан Шигапов on 02.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var greetingLabel: UILabel!
    
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setupBackground()
        greetingLabel.text = "Welcome, \(person.name) \(person.surname)!"
    }
}

// MARK: - Set background color
extension UIView {
    
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
    
    func setupBackground() {
        self.addVerticalGradientLayer(
            topColor: UIColor(red: 210/255, green: 109/255, blue: 128/255, alpha: 1),
            bottomColor: UIColor(red: 107/255, green: 148/255, blue: 230/255, alpha: 1)
            )
    }
}
