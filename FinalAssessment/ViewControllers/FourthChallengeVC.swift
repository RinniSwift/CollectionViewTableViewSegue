//
//  FourthChallengeVC.swift
//  FinalAssessment
//
//  Created by Adriana González Martínez on 12/5/18.
//  Copyright © 2018 Adriana González Martínez. All rights reserved.
//

import UIKit

class FourthChallengeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? NorthPoleVC {
            destination.receivedMessage = "Home, Sweet Home."
        }
    }
    
    @IBAction func unwindToLA(segue: UIStoryboardSegue) {
        
    }

}
