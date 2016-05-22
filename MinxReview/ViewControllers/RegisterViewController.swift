//
//  RegisterViewController.swift
//  ShoesReviewApp
//
//  Created by FolkSonG on 5/6/2559 BE.
//  Copyright © 2559 FolkSonG. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var Successfully: UILabel!
    @IBOutlet weak var NotSuccessfully: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //var arrayOfString: [String] = [""]
    
    @IBAction func buttonSignUp_OnClick() {
        //เช็คไม่ให้ช่องแต่ละช่องเป็นค่าว่าง
        if(txtPassword.text==txtConfirmPassword.text && txtUsername.text != "" && txtPassword.text != "" && txtConfirmPassword != "" && txtEmail.text != ""){
            let kumuAPI = Kumulos()
            kumuAPI.createUserWithUsername(txtUsername.text, andPassword: txtPassword.text, andEmail: txtEmail.text)
            Successfully.hidden = false
            NotSuccessfully.hidden = true
            
        }
        else{
            
            NotSuccessfully.hidden = false
            Successfully.hidden = true
            
            let myAlert = UIAlertController(title: "Alert", message: "Please enter a valid", preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            
            myAlert.addAction(okAction)
            
            self.presentViewController(myAlert, animated: true, completion: nil)

        }
    }
    
}