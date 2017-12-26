//
//  NavigationBar.swift
//  QravedOnlineTest
//
//  Created by Faiz Umar Baraja on 24/12/2017.
//  Copyright © 2017 FaizBarajaApps. All rights reserved.
//

import UIKit

class NavigationBarPrimary: UINavigationBar {
    var navigationBarItem:UINavigationItem = UINavigationItem()
    let leftButton:UIBarButtonItem = UIBarButtonItem()
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    /*required init?(coder aDecoder: NSCoder) {
        super .init(coder: aDecoder)
    }*/
    override func awakeFromNib() {
        super.awakeFromNib()
        let viewStatus = UIView(frame: CGRect(x: 0, y: -20, width: self.frame.width, height: 20))
        
        self.barTintColor = UIColor.white
        self.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.54)
        
        viewStatus.backgroundColor = self.barTintColor
        
        let navbarFont = UIFont(name: "HelveticaNeue-Reguler", size: 21) ?? UIFont.systemFont(ofSize: 21)
        let navBarAttributesDictionary: [NSAttributedStringKey: AnyObject]? = [
            NSAttributedStringKey.foregroundColor: UIColor(red: 51.0/255.0, green: 51.0/255.0, blue: 51.0/255.0, alpha: 0.87),
            NSAttributedStringKey.font: navbarFont
        ]
        self.titleTextAttributes = navBarAttributesDictionary
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 0.5
        self.layer.masksToBounds = false
        self.backIndicatorImage = #imageLiteral(resourceName: "ic_back")
        self.backIndicatorTransitionMaskImage = #imageLiteral(resourceName: "ic_back")
        
        self.addSubview(viewStatus)
        self.clipsToBounds = false
        
        //leftButton = UIBarButtonItem(title: "", style: .plain, target: self, action: #selector(addTapped))
        leftButton.title = ""
        leftButton.style = .plain
        leftButton.image = #imageLiteral(resourceName: "ic_back")
        navigationBarItem = UINavigationItem(title: "Followers")
        self.items = [navigationBarItem]
        navigationBarItem.leftBarButtonItem = leftButton
        
    }
    
    func setNavigationItemTitle(stringTitle:String){
        let leftButton = UIBarButtonItem(title: "", style: .plain, target: self, action: #selector(addTapped))
        leftButton.image = #imageLiteral(resourceName: "ic_back")
        navigationBarItem = UINavigationItem(title: stringTitle)
        self.items = [navigationBarItem]
        navigationBarItem.leftBarButtonItem = leftButton
    }
    
    @objc func addTapped(){
        
    }
    
    
}

class NavigationBarTransparent: UINavigationBar {
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    override func awakeFromNib() {
        super.awakeFromNib()
        let viewStatus = UIView(frame: CGRect(x: 0, y: -20, width: self.frame.width, height: 20))
        
        self.barTintColor = UIColor.white
        self.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.54)
        
        viewStatus.backgroundColor = UIColor.clear
        
        self.setBackgroundImage(UIImage(), for: .default)
        self.shadowImage = UIImage()
        self.isTranslucent = true
        self.tintColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        self.backIndicatorImage = #imageLiteral(resourceName: "ic_back")
        self.backIndicatorTransitionMaskImage = #imageLiteral(resourceName: "ic_back")
        
        self.addSubview(viewStatus)
        self.clipsToBounds = false
    }
}
