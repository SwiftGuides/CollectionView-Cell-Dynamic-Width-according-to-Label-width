//
//  ViewController.swift
//  collectionViewFlowLayoutDemo
//
//  Created by MacMini on 9/17/19.
//  Copyright © 2019 Immanent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    let menuNames = ["Buy","Rent/PG","Commercial","Projects","Consultants","Investors Launge fuck yeah"]
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        }
    }


}

extension ViewController:UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "demoCollectionViewCell", for: indexPath) as! demoCollectionViewCell
        
        cell.menuNames.text = menuNames[indexPath.row]
        return cell
    }
    
    
}
