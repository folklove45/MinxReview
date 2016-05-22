//
//  PhotoTakingHelper.swift
//  MinxReview
//
//  Created by FolkSonG on 5/19/2559 BE.
//  Copyright © 2559 FolkSonG. All rights reserved.
//

import UIKit

typealias PhotoTakingHelperCallback = UIImage? -> Void

class PhotoTakingHelper: NSObject {

    
    weak var viewController: UIViewController!
    var callback: PhotoTakingHelperCallback
    var imagePickerController: UIImagePickerController?
    
    init(viewController: UIViewController, callback: PhotoTakingHelperCallback){
        self.viewController = viewController
        self.callback = callback
        
        super.init()
        showPhotoSourceSelection()
    }
    
    func showImagePickerController( sourceType: UIImagePickerControllerSourceType){
        imagePickerController = UIImagePickerController()
        imagePickerController!.sourceType = sourceType
        self.viewController.presentViewController(imagePickerController!, animated: true, completion: nil)
    }
    
    func showPhotoSourceSelection(){
        //Allow user to choose between photo library and camera
        let alertController = UIAlertController(title: nil,message: "Where do you want to get your picture from?", preferredStyle: .ActionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        let phontoLibraryAction = UIAlertAction(title: "Photo from Library", style: .Default){ (action) in
            
            self.showImagePickerController(.PhotoLibrary)
        }
        
        alertController.addAction(phontoLibraryAction)
        
        //Only show camera option if rear camera is available
        if(UIImagePickerController.isCameraDeviceAvailable(.Rear)){
            let cameraAction = UIAlertAction(title: "Photo from Camera", style: .Default){
                (action) in
                self.showImagePickerController(.Camera)
                
            }
            alertController.addAction(cameraAction)
        }
        
        viewController.presentViewController(alertController, animated: true, completion: nil)
        
    }
}
