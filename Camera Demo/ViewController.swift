//
//  ViewController.swift
//  Camera Demo
//
//  Created by Shailendra Suriyal on 31/01/17.
//  Copyright © 2017 RealDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet var imageVIew: UIImageView!
    
    @IBOutlet var importImage: UIButton!
    
    
    @IBAction func importImage(_ sender: Any) {
        
        let imagePicker = UIImagePickerController()
        
        imagePicker.delegate = self
        
        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        imagePicker.allowsEditing = false
        
        self.present(imagePicker, animated: true) { 
            print("Shailu  Done")
        }
        
        
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageVIew.image = image
        } else {
            print("Image was not rendered")
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

