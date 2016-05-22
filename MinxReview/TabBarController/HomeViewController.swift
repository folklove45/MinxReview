//
//  HomeViewController.swift
//  ShoesReviewApp
//
//  Created by FolkSonG on 5/12/2559 BE.
//  Copyright © 2559 FolkSonG. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var txtShoesname: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.tabBarController?.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        }
    
}

/*//ต้องสร้างนอกคลาส
//MARK: Tab Bar Delegate
extension HomeViewController: UITabBarControllerDelegate{
    
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController)->Bool{
        if(viewController is SearchViewController){
            print("Show Search")
            return false
        }else{
            return true
        }
    }
}*/
