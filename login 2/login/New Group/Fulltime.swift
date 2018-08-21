//
//  Fulltime.swift
//  login
//
//  Created by MacStudent on 2018-08-18.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Fulltime : Employee
{
    
    var Salary: Int?
    var Bonus : Int?
    
    
    
    func getSalary() -> Int
    {
        return self.Salary!
    }
    func setSalary(Salary : Int)
    {
        self.Salary = Salary
    }
    
    
    
    func  getBonus() -> Int
    {
        return self.Bonus!
    }
    
    func setBonus(Bonus : Int)
    {
        self.Bonus = Bonus
    }
    
    
    func calcEarning() -> Int
    {
        return (Int(Double(Salary!)*(Double(100+Bonus!) / 100)))
    }
    override func printmydata()
    {
        
        print("Employee is full time")
        super.printmydata()
        print("""
            Employee  Total salary : \(calcEarning())
            *************
            """)
        
    }
    
}
