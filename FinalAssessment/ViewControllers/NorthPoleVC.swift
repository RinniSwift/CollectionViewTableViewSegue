//
//  NorthPoleVC.swift
//  FinalAssessment
//
//  Created by Adriana González Martínez on 12/5/18.
//  Copyright © 2018 Adriana González Martínez. All rights reserved.
//

import UIKit

class NorthPoleVC: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    var receivedMessage: String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageLabel.text = receivedMessage
    }
    @IBAction func backToLAButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toLA", sender: self)
    }
    
}
