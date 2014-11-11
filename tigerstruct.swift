//
//  tigerstruct.swift
//  tiger
//
//  Created by Parimala Gollapudi on 11/2/14.
//  Copyright (c) 2014 Parimala Gollapudi. All rights reserved.
//

import Foundation
import UIkit

class TigerList
{
   
    var age : Int
    var name : String
    var image = UIImage(named: "")

     func trueAge(x:Int) -> Int {

     self.age = x * self.age
        return self.age
         
       }
    
    init (age:Int, name:String, image:UIImage){
        
        self.age = age
        self.name = name
        self.image = image
        
    }
}
