//
//  vehicle.swift
//  login
//
//  Created by MacStudent on 2018-08-18.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
//
//  Vehicle.swift
//  final project
//
//  Created by MacStudent on 2018-07-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Vehicle: IDisplay
{
    
    
    var make: String?
    var plate: String?
    
    
    
    func printmydata()
    {
        print("""
            *************
            Make Of vehicle is = \(make!)
            **************
            Plate of vehicle is = \(plate!)
            **************
            """)
    }
}

