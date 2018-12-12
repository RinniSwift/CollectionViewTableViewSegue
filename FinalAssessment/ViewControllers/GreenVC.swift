//
//  GreenVC.swift
//  FinalAssessment
//
//  Created by Adriana González Martínez on 12/5/18.
//  Copyright © 2018 Adriana González Martínez. All rights reserved.
//

import UIKit

class GreenVC: UIViewController {

    lazy var backButton: UIButton = {
        
        let backButton = UIButton()
        backButton.frame = CGRect(x: 0, y: 80, width: self.view.frame.size.width, height: 80)
        backButton.setTitle("Go Back", for: .normal)
        //Add a target
        
        return backButton
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(displayP3Red: 45.0/255, green: 150.0/255, blue: 147.0/255, alpha: 1.0)
        self.view.addSubview(backButton)
    }
    
    //Go back method here

}
