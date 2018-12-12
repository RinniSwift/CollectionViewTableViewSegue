//
//  FirstChallengeVC.swift
//  FinalAssessment
//
//  Created by Adriana González Martínez on 12/5/18.
//  Copyright © 2018 Adriana González Martínez. All rights reserved.
//

import UIKit

class FirstChallengeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView = UITableView()
    var wishListItems = ["puppy", "sweater", "snow", "hot chocolate", "algorithms", "christmas charols", "boots", "rain coat", "money", "job"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    func setUpViews() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        tableView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
        
        
        self.view.addSubview(tableView)
    }
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wishListItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        cell.textLabel?.text = wishListItems[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let uiView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: 100))
        let labelView: UILabel = UILabel(frame: CGRect(x: 4, y: 5, width: 276, height: 24))
        labelView.text = "My Winter Wishlist"
        uiView.addSubview(labelView)
        return uiView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
}
