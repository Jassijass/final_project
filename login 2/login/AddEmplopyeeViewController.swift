//
//  AddEmplopyeeViewController.swift
//  login
//
//  Created by MacStudent on 2018-08-16.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class AddEmplopyeeViewController: UIViewController {
    var Emparray  : [Employee] = []
    var Employee1 =  Employee()
    var Parttime1 =  PartTime()
    var Intern1 =   Intern()
    var Fulltime1 =  Fulltime()
    var Car1 =       Car()
    var MotorCycle1 = Motorcycle()
    var Commission1 = CommissionBasedpartTime()
    var Fixed1 =  fixedBasedparttime()
    var vehicle1 = Vehicle()
    
    @IBOutlet weak var empsal: UITextField!
    @IBOutlet var vwview: UIView!
    
    @IBOutlet weak var empschoolname: UITextField!
    @IBOutlet weak var txtEmpId: UITextField!
    @IBOutlet weak var txtEmpName: UITextField!
    @IBOutlet weak var txtEmpbirth: UITextField!
    @IBOutlet weak var txtPlate: UITextField!
    @IBOutlet weak var txtmodel: UITextField!
    @IBOutlet weak var txtEmprate: UITextField!
   
    @IBOutlet weak var NoOfDoors: UITextField!
    @IBOutlet weak var txtproperties: UITextField!
    @IBOutlet weak var chooseVehicle: UISegmentedControl!
    
    
    @IBOutlet weak var vehcileaval: UISegmentedControl!
    @IBOutlet weak var EmployeeDetails: UISegmentedControl!
   
    
    @IBAction func VechicleAva(_ sender: Any) {
        
        if (chooseVehicle.selectedSegmentIndex==0)
        {
            NoOfDoors.text = ""
            NoOfDoors.isEnabled = false
            
        }
        else if (chooseVehicle.selectedSegmentIndex==1)
        {
            
        }
    }
    
    
    
    
    @IBAction func EmployeeValue(_ sender: UISegmentedControl) {
    
      
    if(EmployeeDetails.selectedSegmentIndex == 0)
        {
            txtEmprate.text = ""
            txthour.text = ""
            txthour.isHidden = false
            txtEmprate.isHidden = false
            empschoolname.isHidden = true
            empsal.isHidden = true
            
            
        }
        else  if (EmployeeDetails.selectedSegmentIndex == 1)
        {
            
            empschoolname.text = ""
            txtEmprate.isHidden =  true
            empschoolname.isHidden = false
            empsal.isHidden = true
            txthour.isHidden = true
            txtbonus.isHidden = true
        }
            
            
        else  if (EmployeeDetails.selectedSegmentIndex == 2)
        {
            empsal.text = ""
            txtbonus.text = ""
            txtbonus.isHidden = false
            txtEmprate.isHidden =  true
            empschoolname.isHidden = true
            empsal.isHidden = false
        }
    }
    @IBOutlet weak var txtfixAmnt: UITextField!
    @IBOutlet weak var txtCommissionper: UITextField!
    @IBOutlet weak var txtRate: UITextField!
    @IBOutlet weak var txtbonus: UITextField!
    @IBOutlet weak var txtsalary: UITextField!
    
    @IBOutlet weak var txthour: UITextField!
   
    
 
      
       
        
        
        
        
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func payroll(_ sender: Any) {
        
        
        switch EmployeeDetails.selectedSegmentIndex
        {
            
        case 0:
            Intern1.Id = Int(txtEmpId.text!)!
            Intern1.Name = txtEmpName.text
            Intern1.Age = Int(txtEmpbirth.text!)!
            Intern1.SchoolName = empschoolname.text
            Emparray.append(Intern1)
            
            if vehcileaval.selectedSegmentIndex == 0
            {
                Intern1.vehicle = nil
            }
            else {
                if chooseVehicle.selectedSegmentIndex == 0
                {
                    
                    Car1.make = txtmodel.text
                    Car1.plate = txtPlate.text
                    Car1.NoOfdoors = Int(txtproperties.text!)!
                    
                    
                }
                else {
                    MotorCycle1.make = txtmodel.text
                    MotorCycle1.plate = txtPlate.text
                    MotorCycle1.TopSpeed = Int(txtproperties.text!)!
                }
                
            }
        case 1:
            
            Fulltime1.Id = Int(txtEmpId.text!)!
            Fulltime1.Name = txtEmpName.text
            
            
            Fulltime1.Age = Int(txtEmpbirth.text!)!
            Fulltime1.Salary = Int(txtsalary.text!)!
            Fulltime1.Bonus = Int (txtbonus.text!)!
            Emparray.append(Fulltime1)
            if vehcileaval.selectedSegmentIndex == 0
            {
                Fulltime1.vehicle = nil
            }
            else {
                if chooseVehicle.selectedSegmentIndex == 0
                {
                    
                    Car1.make = txtmodel.text
                    Car1.plate = txtPlate.text
                    Car1.NoOfdoors = Int(txtproperties.text!)!
                }
                else {
                    MotorCycle1.make = txtmodel.text
                    MotorCycle1.plate = txtPlate.text
                    MotorCycle1.TopSpeed = Int(txtproperties.text!)!
                    
                    
                }
            }
            
        case 2:
            
            Fixed1.Id = Int(txtEmpId.text!)!
            Fixed1.Name = txtEmpName.text
            
            
            Fixed1.Age = Int(txtEmpbirth.text!)!
            Fixed1.numberOfHoursWorked = Int(txthour.text!)!
            Fixed1.rate = Int(txtRate.text!)!
            Fixed1.FixedAmmount = Int (txtfixAmnt.text!)!
            Emparray.append(Fixed1)
            if vehcileaval.selectedSegmentIndex == 0
            {
                Fulltime1.vehicle = nil
            }
            else {
                if chooseVehicle.selectedSegmentIndex == 0
                {
                    
                    Car1.make = txtmodel.text
                    Car1.plate = txtPlate.text
                    Car1.NoOfdoors = Int(txtproperties.text!)!
                    
                    
                }
                else {
                    MotorCycle1.make = txtmodel.text
                    MotorCycle1.plate = txtPlate.text
                    MotorCycle1.TopSpeed = Int(txtproperties.text!)!
                    
                    
                }
            }
            
            
        case 3:
            
            
            
            Commission1.Id = Int(txtEmpId.text!)!
            Commission1.Name = txtEmpName.text
            
            
            Commission1.Age = Int(txtEmpbirth.text!)!
            Commission1.numberOfHoursWorked = Int(txthour.text!)!
            Commission1.rate = Int(txtRate.text!)!
            Commission1.Commissionperc =  Double(txtCommissionper.text!)!
        
            
            
            if vehcileaval.selectedSegmentIndex == 0
            {
                Fulltime1.vehicle = nil
            }
            else {
                if chooseVehicle.selectedSegmentIndex == 0
                {
                    
                    Car1.make = txtmodel.text
                    Car1.plate = txtPlate.text
                    Car1.NoOfdoors = Int(txtproperties.text!)!
                    
                    
                }
                else {
                    MotorCycle1.make = txtmodel.text
                    MotorCycle1.plate = txtPlate.text
                    MotorCycle1.TopSpeed = Int(txtproperties.text!)!
                    
                    
                }
            }
        default:
            break
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
      
}
