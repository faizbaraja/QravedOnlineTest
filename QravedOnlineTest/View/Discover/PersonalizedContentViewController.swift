//
//  PersonalizedContentViewController.swift
//  QravedOnlineTest
//
//  Created by Faiz Umar Baraja on 26/12/2017.
//  Copyright © 2017 FaizBarajaApps. All rights reserved.
//

import UIKit

class PersonalizedContentViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    @IBOutlet var collectionViewPersonalizedContent:UICollectionView?
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewPersonalizedContent?.register(UINib(nibName:"PersonalizedContentCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PersonalizedContentCollectionViewCell")
        collectionViewPersonalizedContent?.dataSource = self
        collectionViewPersonalizedContent?.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    // tell the collection view how many cells to make
    func numberOfSections(in collectionView: UICollectionView) -> Int{
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        
        let collectionViewLayout = collectionViewPersonalizedContent?.collectionViewLayout as? UICollectionViewFlowLayout
        let collectionViewMarginIterItem:CGFloat = (collectionViewLayout?.minimumInteritemSpacing)!
        let collectionViewLeftInset:CGFloat = (collectionViewLayout?.sectionInset.left)!
        let collectionViewRightInset:CGFloat = (collectionViewLayout?.sectionInset.right)!
        
        let columnCount:CGFloat = 4.0
        let spaceCount:CGFloat = columnCount - 1
        
        let cellWidth = ((collectionViewPersonalizedContent?.frame.size.width)! - (collectionViewMarginIterItem + collectionViewLeftInset + collectionViewRightInset + spaceCount)) / columnCount
        let cellHeight:CGFloat = cellWidth
        return CGSize(width:cellWidth, height: cellHeight)
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewPersonalizedContent?.dequeueReusableCell(withReuseIdentifier: "PersonalizedContentCollectionViewCell", for: indexPath) as! PersonalizedContentCollectionViewCell
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
