//
//  Employee.swift
//  login
//
//  Created by MacStudent on 2018-08-18.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
let  date = Date()
let calendar = Calendar.current
let currentYear = calendar.component(.year, from: date)

class Employee : IDisplay
{
    
    
    
    
    var Id: Int?
    var Age : Int?
    var Name: String?
    var vehicle : Vehicle?
    
    
    
    
   
    
    func getName() -> String
    {
        return self.Name!
    }
    func setName(Name : String)
    {
        self.Name = Name
    }
    
    
    
    func  getAge() -> Int
    {
        return self.Age!
    }
    
    func setAge(Age : Int)
    {
        self.Age = Age
    }
    
    
    
    func getId() -> Int
    {
        return self.Id!
    }
    func setId(Id : Int)
    {
        self.Id = Id
    }
    
    func calBirthYear() -> Int
    {
        return currentYear - Age!
    }
    
    func printmydata()
    {
        print("""
            *******************
            Employee Id: \(Id!),
            *******************
            Name of Employee is : \(Name!)
            *******************
            birth year of Employee : \(calBirthYear())
            ********************
            """)
    }
}
