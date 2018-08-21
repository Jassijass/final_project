//
//  commissionbased.swift
//  login
//
//  Created by MacStudent on 2018-08-18.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class CommissionBasedpartTime : PartTime
{
    var   Commissionperc : Double?
    
    
    
    func getCommissionperc() -> Double
    {
        return self.Commissionperc!
    }
    
    func calcEarning() -> Double
    {
        return ((Double)(numberOfHoursWorked*rate) + ((Double(numberOfHoursWorked*rate))*(Commissionperc!/100)))
    }
    override func printmydata()
    {
        
        print("Employee is commissionedBasedPartTime")
        super .printmydata()
        print("""
            Total earning : \(calcEarning())
            *****************
            """)
        
    }
    
}
