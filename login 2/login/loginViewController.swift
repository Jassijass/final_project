//
//  loginViewController.swift
//  login
//
//  Created by MacStudent on 2018-08-14.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func LoginClick(_ sender: Any) {
 
    
        if(txtEmail.text == "jass" && txtPassword.text == "jass") {
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let homeViewController = storyBoard.instantiateViewController(withIdentifier: "Screen") as! DisplayViewController
            self.present(homeViewController, animated: true, completion: nil)
            //
        }
        
        else
        {
            let myAlert = UIAlertController(title: "Alert", message: "Login Unsucessfull", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil)
            myAlert.addAction(okAction)
            self.present(myAlert,animated: true, completion: nil)
            
        }
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

