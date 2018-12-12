//
//  SixthChallengeVC.swift
//  FinalAssessment
//
//  Created by Adriana González Martínez on 12/5/18.
//  Copyright © 2018 Adriana González Martínez. All rights reserved.
//

import UIKit

class SixthChallengeVC: UIViewController {
    
    // populate the items array
    var items = [Item]()
    var collectionView: UICollectionView!
    let collectionFlowLayout = UICollectionViewFlowLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        setupViews()
        collectionView.delegate = self
        collectionView.dataSource = self
       

    }
    
    func setupViews() {
        
        
        for date in 1...25 {
            items.append(Item(number: date, image: UIImage(named: "Present")!))
        }
        
        collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: collectionFlowLayout)
        collectionView.register(UINib(nibName: "ItemCell", bundle: nil), forCellWithReuseIdentifier: "cellID")
        collectionView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        
        // add the collection view
        self.view.addSubview(collectionView)
    }
    

}


 
extension SixthChallengeVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return 25
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as? ItemCell
        cell?.dateLabel.text = String(items[indexPath.row].number)
        cell?.image.image = items[indexPath.row].image
        
        return cell!
        
    }
    
}

extension SixthChallengeVC: UICollectionViewDelegateFlowLayout {
    
     func collectionView(_ collectionView: UICollectionView,
     layout collectionViewLayout: UICollectionViewLayout,
     sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width/6, height: view.frame.height/6)
     }
     
     
     func collectionView(_ collectionView: UICollectionView,
     layout collectionViewLayout: UICollectionViewLayout,
     insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
     }
 
     func collectionView(_ collectionView: UICollectionView,
     layout collectionViewLayout: UICollectionViewLayout,
     minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
     }
     
     func collectionView(_ collectionView: UICollectionView,
     layout collectionViewLayout: UICollectionViewLayout,
     minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    
}



struct Item {
    var number: Int
    var image: UIImage
    
    init(number: Int, image: UIImage) {
        self.number = number
        self.image = image
    }
    
}
