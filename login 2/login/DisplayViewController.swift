//
//  DisplayViewController.swift
//  login
//
//  Created by MacStudent on 2018-08-18.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
 var datePicker: UIDatePicker?
    @IBOutlet weak var TextDatePicker: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(DisplayViewController.dateChanged(datePicker:)), for: .valueChanged)
        TextDatePicker.inputView = datePicker
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(DisplayViewController.viewTapped(gestureRecognizer:)))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func dateChanged(datePicker: UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        TextDatePicker.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer)  {
        view.endEditing(true)
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
