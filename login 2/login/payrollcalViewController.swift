//
//  payrollcalViewController.swift
//  login
//
//  Created by MacStudent on 2018-08-16.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class payrollcalViewController: UIViewController {
    
    var Employee1 =  Employee()
    var Parttime1 =  PartTime()
    var Intern1 =   Intern()
    var Fulltime1 =  Fulltime()
    var Car1 =       Car()
    var MotorCycle1 = Motorcycle()
    var Commission1 = CommissionBasedpartTime()
    var Fixed1 =  fixedBasedparttime()
    var vehicle1 = Vehicle()
    

    @IBOutlet weak var Id: UILabel!
    @IBOutlet weak var ENAME: UILabel!
    
    var myString  = String()
    override func viewDidLoad() {
        super.viewDidLoad()
Id.text = myString
        // Do any additional setup after loading the view.
    }
     
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
        
    }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
