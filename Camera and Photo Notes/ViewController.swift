//
//  ViewController.swift
//  Camera and Photo Notes
//
//  Created by DANIEL VEGA on 10/28/21.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
    @IBAction func photoAction(_ sender: UIButton) {
    }
    @IBAction func cameraAction(_ sender: UIButton) {
    }
    

}

