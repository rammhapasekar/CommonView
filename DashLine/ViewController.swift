//
//  ViewController.swift
//  DashLine
//
//  Created by Ram Mhapasekar on 11/17/17.
//  Copyright © 2017 CCAvenue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let value = "value"
    
    @IBOutlet weak var dummyView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad ViewController",value)
        dummyView.addDashedLine(strokeColor: UIColor.black, lineWidth: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear ViewController",value)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear ViewController",value)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
            self.present(vc, animated: true, completion: nil)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear ViewController",value)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear ViewController",value)
    }

    
    


}


extension UIView {
    func addDashedLine(strokeColor: UIColor, lineWidth: CGFloat) {
        let shapeLayer = CAShapeLayer()
        shapeLayer.name = "DashedTopLine"
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = strokeColor.cgColor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.lineJoin = kCALineJoinRound
        shapeLayer.lineDashPattern = [4, 4]
        let path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height), cornerRadius: 05).cgPath
        shapeLayer.path = path
        layer.addSublayer(shapeLayer)
    }
}
