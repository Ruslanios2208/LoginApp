//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Руслан Шигапов on 05.10.2022.
//

import UIKit

class InfoViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var image: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var citizenshipLabel: UILabel!
    @IBOutlet var employmentLabel: UILabel!
    
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
        title = person.name + " " + person.surname
        image.image = UIImage(named: "Image")
        setValue()
    }
    
    override func viewWillLayoutSubviews() {
        image.layer.cornerRadius = image.frame.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.title = "\(person.name) \(person.surname) Bio"
        bioVC.bio = person.bio
    }
    
    // MARK: - Private Methods
    private func setValue() {
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        ageLabel.text = person.age
        citizenshipLabel.text = person.citizenship
        employmentLabel.text = person.employment
    }
}
