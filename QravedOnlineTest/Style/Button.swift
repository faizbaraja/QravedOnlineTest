//
//  Button.swift
//  QravedOnlineTest
//
//  Created by Faiz Umar Baraja on 26/12/2017.
//  Copyright © 2017 FaizBarajaApps. All rights reserved.
//

import UIKit

class Button: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

class ButtonFollow: UIButton {
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
        self.setBackgroundImage(#imageLiteral(resourceName: "ic_button_follow"), for: .normal)
    }
    
}
