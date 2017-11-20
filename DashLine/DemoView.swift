//
//  DemoView.swift
//  DashLine
//
//  Created by Ram Mhapasekar on 11/20/17.
//  Copyright © 2017 CCAvenue. All rights reserved.
//

import UIKit

protocol DemoViewDelegate {
    
    func buttonClick(sender: DemoView);
}

class DemoView: UIView {
    
    var delegate:  DemoViewDelegate?

    @IBAction func buttonClicked(_ sender: UIButton) {
        self.delegate?.buttonClick(sender: self)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
