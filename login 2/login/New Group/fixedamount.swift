//
//  fixedamount.swift
//  login
//
//  Created by MacStudent on 2018-08-18.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class fixedBasedparttime : PartTime {
    
    var FixedAmmount : Int?
    
    
    func calcEarning() -> Int {
        
        return (rate*numberOfHoursWorked) + (FixedAmmount)!
    }
    override func printmydata() {
        
        print("Employee is fixedbasedparttime ")
        super .printmydata()
        print("""
            ****************
            Total earning : \(calcEarning())
            *****************
            """)
    }
    
}
