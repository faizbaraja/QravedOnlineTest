//
//  View.swift
//  QravedOnlineTest
//
//  Created by Faiz Umar Baraja on 26/12/2017.
//  Copyright © 2017 FaizBarajaApps. All rights reserved.
//

import UIKit
import QuartzCore

class View: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

class ViewImageShadow:UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        self.layer.cornerRadius = self.frame.width/2
        self.clipsToBounds = true
        
        self.backgroundColor = UIColor.clear
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowRadius = 1.0
        self.layer.shadowOpacity = 1.0
        self.layer.masksToBounds = false
    }
}

class ViewCircleShape:UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        self.layer.cornerRadius = self.frame.width/2
        self.clipsToBounds = true
    }
}


class ViewImageOverLayCard:UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        self.layer.cornerRadius = 5
        self.backgroundColor = UIColor(red: 54.0/255.0, green: 64.0/255.0, blue: 71.0/255.0, alpha: 0.5)
    }
}


class ViewHexagon:UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        configureLayerForHexagon()
    }
    
    func configureLayerForHexagon(){
        
        
        let maskLayer = CAShapeLayer()
        maskLayer.fillRule = kCAFillRuleEvenOdd
        maskLayer.frame = self.bounds
        
        let width:CGFloat = self.frame.size.width;
        let height:CGFloat = self.frame.size.height;
        let hPadding:CGFloat = width * 1 / 8 / 2;
        
        UIGraphicsBeginImageContext(self.frame.size);
        let path:UIBezierPath = UIBezierPath()
        path.move(to: CGPoint(x: width/2, y: 0))
        path.addLine(to: CGPoint(x: width - hPadding, y: height / 4))
        path.addLine(to: CGPoint(x: width - hPadding, y: height * 3 / 4))
        path.addLine(to: CGPoint(x: width / 2, y: height))
        path.addLine(to: CGPoint(x: hPadding, y: height * 3 / 4))
        path.addLine(to: CGPoint(x: hPadding, y: height / 4))
        path.close()
        path.fill()
        maskLayer.path = path.cgPath
        UIGraphicsEndImageContext()
        self.layer.mask = maskLayer
        self.layer.cornerRadius = 5.0
    }
}
