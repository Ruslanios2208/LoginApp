//
//  BioViewController.swift
//  LoginApp
//
//  Created by Руслан Шигапов on 05.10.2022.
//

import UIKit

class BioViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var bioTextView: UITextView!
    
    // MARK: - Public Properties
    var bio = ""
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setupBackground()
        bioTextView.text = bio
    }
}
