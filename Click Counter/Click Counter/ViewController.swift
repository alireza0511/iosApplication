//
//  ViewController.swift
//  Click Counter
//
//  Created by Alireza Jazzb on 6/18/18.
//  Copyright © 2018 Alireza Jazzb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // label
        let label = UILabel()
        label.frame = CGRect(x: 200, y: 250, width: 100, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        // button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 150, width: 100, height: 60)
        button.setTitle("+ Button", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        let decButton = UIButton()
        decButton.frame = CGRect(x: 150, y: 350, width: 100, height: 60)
        decButton.setTitle("- Button", for: .normal)
        decButton.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(decButton)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        decButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
    }
    
    @objc func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    @objc func decrementCount(){
        self.count -= 1
        self.label.text = "\(self.count)"
    }

   


}

