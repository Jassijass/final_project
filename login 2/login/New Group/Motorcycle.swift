//
//  Motorcycle.swift
//  login
//
//  Created by MacStudent on 2018-08-18.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Motorcycle: Vehicle
{
    var TopSpeed: Int?
    

    
    override func printmydata()    {
        print("""
              Employee Has a Motorcycle
              """)
        super.printmydata()
        print("""
            TopSpeed of MotorCycle is = \(TopSpeed!)
            *************
            """)
    }
}
