//
//  SecondVC.swift
//  DashLine
//
//  Created by Ram Mhapasekar on 11/18/17.
//  Copyright © 2017 CCAvenue. All rights reserved.
//

import UIKit

class SecondVC: UIViewController,DemoViewDelegate,NewViewDelegate {

    @IBOutlet weak var demoVC: UIView!
    let currentView = UIView()
    
    func btnPressed(sender: NewView) {
        let demoVC1: DemoView =  DemoView.fromNib()
        demoVC1.frame = self.view.frame
        demoVC1.delegate = self
        self.view = demoVC1
    }
    
    func buttonClick(sender: DemoView) {
        let demoVC1: NewView =  NewView.fromNib()
        demoVC1.frame = self.view.frame
        demoVC1.delegate = self
        self.view = demoVC1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad SecondVC")
        let demoVC1: DemoView =  DemoView.fromNib()
        demoVC1.delegate = self
        demoVC1.frame = self.view.frame
        self.view.addSubview(demoVC1)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear SecondVC")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear SecondVC")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear SecondVC")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear SecondVC")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func PresentVC(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        //let vc = DemoVC.init(nibName: "DemoVC", bundle: nil)
        present(vc, animated: true, completion: nil)
    }
    
    
    @IBAction func dismissVC(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}


