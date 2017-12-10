//
//  ViewController.swift
//  UIKIT1
//
//  Created by Vicky Mohammad on 2016-12-26.
//  Copyright © 2016 Vicky Mohammad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //variable
    var count = 0
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label
        let label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        self.view.addSubview(label)
        //set the label text when the button is click
        self.label = label
        
        // Button
        let button = UIButton()
        button.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
    }//end of view did load

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }//memory warning

    func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
    }//end increment function

}//end class

