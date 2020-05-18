//
//  OnboardingViewController.swift
//  project-letterboxes
//
//  Created by Andimas Bagaswara on 18/05/20.
//  Copyright © 2020 Andimas Bagaswara. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setGradientBackground()
        setCustomButton(continueButton)
    }
    
    // MARK: - Setup Gradient Background Color
    func setGradientBackground() {
        let colorTop =  UIColor(red: 137.0/255.0, green: 247.0/255.0, blue: 254.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 102.0/255.0, green: 166.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height)

        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    func setCustomButton(_ button: UIButton) {
        button.layer.cornerRadius = 10.0
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: Dismiss Onboarding
    @IBAction func continueButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
}
