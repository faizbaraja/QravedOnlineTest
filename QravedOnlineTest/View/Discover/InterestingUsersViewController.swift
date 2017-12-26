//
//  InterestingUsersViewController.swift
//  QravedOnlineTest
//
//  Created by Faiz Umar Baraja on 26/12/2017.
//  Copyright © 2017 FaizBarajaApps. All rights reserved.
//

import UIKit

class InterestingUsersViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    @IBOutlet var collectionViewInterestingUsers:UICollectionView?
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewInterestingUsers?.register(UINib(nibName:"InterestingUsersCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "InterestingUsersCollectionViewCell")
        collectionViewInterestingUsers?.dataSource = self
        collectionViewInterestingUsers?.delegate = self
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
        let cellHeight:CGFloat = collectionView.frame.height
        let cellWidth = cellHeight
        
        return CGSize(width:cellWidth, height: cellHeight)
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewInterestingUsers?.dequeueReusableCell(withReuseIdentifier: "InterestingUsersCollectionViewCell", for: indexPath) as! InterestingUsersCollectionViewCell
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
