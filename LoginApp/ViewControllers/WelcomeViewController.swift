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
    
    // MARK: - Private Properties
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
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
}
