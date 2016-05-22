//
//  ForgotPasswordViewController.swift
//  ShoesReviewApp
//
//  Created by FolkSonG on 5/7/2559 BE.
//  Copyright © 2559 FolkSonG. All rights reserved.
//

import UIKit

class ChangePasswordViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtNewPassword: UITextField!
    @IBOutlet weak var txtSuccess: UILabel!
    @IBOutlet weak var txtFail: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonSubmit_OnClick() {
        /*let kumuAPI = Kumulos()
        if(kumuAPI.selectUserWithUsername(txtUsername.text) == txtUsername.text){
                    if(txtPassword.text != txtNewPassword.text){
            
                        kumuAPI.updateUserWithUsername(txtUsername.text, andPassword: txtNewPassword.text, andEmail: "")
            
                        txtSuccess.hidden = false
                    }
                }*/
        /*if(txtUsername.text != "" && txtPassword.text != "" && txtNewPassword.text != ""){
            let kumuAPI = Kumulos()
            kumuAPI.updateUserWithUsername(txtUsername.text, andPassword: txtNewPassword.text)
            
            txtSuccess.hidden = false
            txtFail.hidden = true
        }
        else{
            
            txtFail.hidden = false
            txtSuccess.hidden = true
            
            let myAlert = UIAlertController(title: "Alert", message: "Please check your Username and your Password again", preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            
            myAlert.addAction(okAction)
            
            self.presentViewController(myAlert, animated: true, completion: nil)
        }*/
        
    }

}