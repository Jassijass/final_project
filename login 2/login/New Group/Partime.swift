//
//  Parttime.swift
//  final project
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class PartTime: Employee {
    var numberOfHoursWorked: Int = 0
    var rate: Int = 0
    
 
    
    override func printmydata() {
        
        super.printmydata()
        print("""
            No. of hours employee worked =  \(numberOfHoursWorked)
            ***************
            Rate Of Employee = \(rate)
            ***************
            """)
        
    }
    
}

