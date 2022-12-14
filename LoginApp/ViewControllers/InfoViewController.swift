//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Руслан Шигапов on 05.10.2022.
//

import UIKit

class InfoViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var image: UIImageView! {
        didSet {
            image.layer.cornerRadius = image.frame.width / 2
        }
    }
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var citizenshipLabel: UILabel!
    @IBOutlet var employmentLabel: UILabel!
    
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setupBackground()
        title = person.fullName
        image.image = UIImage(named: person.photo)
        setValue()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.title = "\(person.fullName) Bio"
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
