//
//  ShoesReviewViewController.swift
//  MinxReview
//
//  Created by FolkSonG on 5/12/2559 BE.
//  Copyright © 2559 FolkSonG. All rights reserved.
//

import UIKit


class ShoesReviewViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    //เพิ่ม UIImagePickerControllerDelegate, UINavigationControllerDelegate เข้ามา
    
    
    @IBOutlet weak var tabSelect: UIPickerView!
    @IBOutlet weak var txtPhoto: UIImageView!
    @IBOutlet weak var txtDescribe: UITextView!
    @IBOutlet weak var txtShoesname: UITextField!
    
    @IBOutlet weak var PhotoLibrary: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //กดแล้วเลือกรูปภาพ
    @IBAction func buttonPhotoLibrary_OnClick(sender: UIButton) {
        
        let picker = UIImagePickerController()
        
        picker.delegate = self
        picker.sourceType = .PhotoLibrary
        presentViewController(picker, animated: true ,completion:  nil)
        
    }

    //โชว์รูปภาพที่เลือกมาใส่ไว้ใน txtPhoto
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info:[String : AnyObject]){
        txtPhoto.image = info [UIImagePickerControllerOriginalImage] as? UIImage; dismissViewControllerAnimated(true, completion:nil)
        
    }
    
    
    
    @IBAction func txtBack_OnClick(sender: AnyObject) {
        
        self.performSegueWithIdentifier("ShoesReviewToTabBar", sender: self)
        
    }
    
    @IBAction func txtDone_OnClick(sender: AnyObject) {
        
        //self.performSegueWithIdentifier("ShoesReviewToTabBar", sender: self)
        
        let kumuAPI = Kumulos()
        
        if(txtPhoto.image != nil && txtDescribe.text != ""){
            let imageNSData = UIImageJPEGRepresentation(txtPhoto.image! , 1)
            kumuAPI.createPostWithPostname(txtShoesname.text, andDescription: txtDescribe.text, andImageData: imageNSData, andPostOwner: 1)
            self.performSegueWithIdentifier("ShoesReviewToTabBar", sender: self)
            
        }
        
        else if(txtPhoto.image == nil && txtDescribe.text != ""){
            kumuAPI.createPostWithPostname(txtShoesname.text, andDescription: txtDescribe.text, andImageData: nil, andPostOwner: 1)
            self.performSegueWithIdentifier("ShoesReviewToTabBar", sender: self)
        }
        
        else if(txtPhoto.image != nil && txtDescribe.text == ""){

            let myAlert = UIAlertController(title: "Alert", message: "Please enter describtion", preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            
            myAlert.addAction(okAction)
            
            self.presentViewController(myAlert, animated: true, completion: nil)
            
        }
        
        else if(txtPhoto.image == nil && txtDescribe.text == ""){
            
            let myAlert = UIAlertController(title: "Alert", message: "Please enter describtion", preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            
            myAlert.addAction(okAction)
            
            self.presentViewController(myAlert, animated: true, completion: nil)
            
        }

    }
    
}