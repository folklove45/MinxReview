//
//  ViewController.swift
//  ShoesReviewApp
//
//  Created by FolkSonG on 5/6/2559 BE.
//  Copyright © 2559 FolkSonG. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var textUsername: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var labelSuccess: UILabel!
    @IBOutlet weak var labelFails: UILabel!
    
        //let kumuAPI = Kumulos()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonLogIn_OnClick() {
        self.performSegueWithIdentifier("TabBarView", sender: self)
        let kumuAPI = Kumulos()
    if(kumuAPI.selectUserWithUsername(textUsername.text, andPassword: textPassword.text) != ""){
        
        self.performSegueWithIdentifier("TabBarView", sender: self)
        
        self.labelSuccess.hidden = false
        self.labelFails.hidden = true
        
        
    }else{
            self.labelFails.hidden = false
            self.labelSuccess.hidden = true
        let myAlert = UIAlertController(title: "Alert", message: "Please login again", preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        
        myAlert.addAction(okAction)
        
        self.presentViewController(myAlert, animated: true, completion: nil)
        
        }
        
    }
    
}

