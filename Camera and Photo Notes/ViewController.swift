//
//  ViewController.swift
//  Camera and Photo Notes
//
//  Created by DANIEL VEGA on 10/28/21.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var imageViewOutlet: UIImageView!
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
    @IBAction func photoAction(_ sender: UIButton) {
        imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        present(imagePicker, animated: true, completion: nil)
        
    }
    @IBAction func cameraAction(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
        }
        else{
            imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        }
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        self.imageViewOutlet.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        
    }
    
    
}

