//
//  ViewController.swift
//  tiger
//
//  Created by Parimala Gollapudi on 11/2/14.
//  Copyright (c) 2014 Parimala Gollapudi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageLabel: UIImageView!

    var tigerArray: [TigerList] = []
    var i:Int = 0
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBAction func nextitem(sender: UIBarButtonItem) {
        ++i
       if i >= tigerArray.count
        {
            i = 0
        }
        
        ageLabel.text = String(tigerArray[i].age)
        nameLabel.text = tigerArray[i].name
        imageLabel.image = tigerArray[i].image
        
    }
    
    @IBAction func randomButtonClick(sender: AnyObject) {
        let randomInt = Int(arc4random_uniform(UInt32(tigerArray.count)))
        i = randomInt
        let c = tigerArray[i]
        
        UIView.transitionWithView(self.view, duration: 0.4, options:UIViewAnimationOptions.TransitionFlipFromRight, animations: {
            
            self.ageLabel.text = String(c.age)
            self.nameLabel.text = c.name
            self.imageLabel.image = c.image
            
            }, completion: {(finished: Bool) -> () in })
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
        tigerArray = [TigerList(age:2 , name:"BEngal", image:UIImage(named: "unknown.jpg")) ,TigerList(age:3 , name:"Bengal1", image:UIImage(named: "unknown-2.jpg"))  , TigerList(age:4 , name:"Bengal2", image:UIImage(named: "unknown-3.jpg"))]
        if i < tigerArray.count
        {
          ageLabel.text = String(tigerArray[i].age)
            nameLabel.text = tigerArray[i].name
            imageLabel.image = tigerArray[i].image

        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

