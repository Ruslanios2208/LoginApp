//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Руслан Шигапов on 02.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    var greeting: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = greeting
    }
}
