//
//  ItemCell.swift
//  FinalAssessment
//
//  Created by Adriana González Martínez on 12/6/18.
//  Copyright © 2018 Adriana González Martínez. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {
    
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    
}
