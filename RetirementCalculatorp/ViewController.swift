//
//  ViewController.swift
//  RetirementCalculatorp
//
//  Created by Pranesh Vallabh on 2022/10/09.
//

import UIKit
import AppCenterCrashes
import AppCenterAnalytics

class ViewController: UIViewController {

    @IBOutlet weak var monthlyInvestmentsTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var retirementAgeTextField: UITextField!
    @IBOutlet weak var interestRateTextField: UITextField!
    @IBOutlet weak var savingsTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if       Crashes.hasCrashedInLastSession {
            let alert = UIAlertController(title: "Oops", message: "Sorry abot that an error occurred", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "It;s cool", style: .default))
            self.present(alert, animated: true)
        }

    }

    @IBAction func calculateButton_TouchUpInside(_ sender: Any) {
        //Crashes.generateTestCrash()
        
        Analytics.trackEvent("calculate_retirement_amount")
    }
    
}

