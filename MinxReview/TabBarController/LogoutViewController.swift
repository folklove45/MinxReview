//
//  LogoutViewController.swift
//  ShoesReviewApp
//
//  Created by FolkSonG on 5/12/2559 BE.
//  Copyright © 2559 FolkSonG. All rights reserved.
//

import UIKit

class LogoutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Logoutbutton_OnClick() {
        
    //self.tabBarController?.selectedViewController = self.tabBarController?.viewControllers?.first
    
    self.performSegueWithIdentifier("LogOutToLogInView", sender: self)
    }
    
}
