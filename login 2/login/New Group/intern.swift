//
//  intern.swift
//  login
//
//  Created by MacStudent on 2018-08-18.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Intern : Employee {
    
    var SchoolName : String?
    
   
        
    
    func getSchoolName() -> String
    {
        return self.SchoolName!
    }
    
    override func printmydata() {
        
        print("Employee is intern type")
        super.printmydata()
        print("""
            school name of intern : \(SchoolName!)
            *************
            """)
    }
}
