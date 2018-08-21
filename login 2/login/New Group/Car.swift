//
//  Car.swift
//  login
//
//  Created by MacStudent on 2018-08-18.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Car : Vehicle
{
    
    var NoOfdoors : Int?
    
    
    
    
    func getNoOfDoors() -> Int
    {
        return self.NoOfdoors!
    }
    
    override  func printmydata()
    {
        
        print("Employe has a car")
        super.printmydata()
        print("""
            NoOfDoors: \(String(describing: NoOfdoors!))
            ****************
            """)
        
    }
    
    
    
    
}
