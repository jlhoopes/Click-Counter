//
//  ViewController.swift
//  Click Counter
//
//  Created by Jason on 11/16/17.
//  Copyright © 2017 Jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    var label:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        var label = UILabel()
        label.frame = CGRect(x:150,y:150,width:60,height:60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        //Button
        var button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click",for:[])
        button.setTitleColor(UIColor.blue,for:[])
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
    }
    @objc func incrementCount(){
        self.count = self.count+1
        self.label.text = "\(self.count)"
        
    }

}

