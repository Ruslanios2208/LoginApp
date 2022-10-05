//
//  BioViewController.swift
//  LoginApp
//
//  Created by Руслан Шигапов on 05.10.2022.
//

import UIKit

class BioViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var bioLabel: UILabel!
    
    // MARK: - Public Properties
    var bio = ""
    
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
        bioLabel.text = bio
    }

}
