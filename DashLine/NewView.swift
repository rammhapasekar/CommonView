//
//  NewView.swift
//  DashLine
//
//  Created by Ram Mhapasekar on 11/20/17.
//  Copyright © 2017 CCAvenue. All rights reserved.
//

import UIKit

protocol NewViewDelegate {
    func btnPressed(sender: NewView)
}

class NewView: UIView {

    var delegate: NewViewDelegate?
    
    @IBAction func btnPressed(_ sender: UIButton) {
        self.delegate?.btnPressed(sender: self)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
