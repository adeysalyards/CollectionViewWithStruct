//
//  CaptionViewController.swift
//  Instagram-Clone-Prep
//
//  Created by Salyards, Adey on 9/27/16.
//  Copyright © 2016 Salyards, Adey. All rights reserved.
//

import UIKit

class CaptionViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var captionField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func postImageAction(_ sender: AnyObject) {
        
        var myNewImage = instagramImage(image: myImageView.image!, username: usernameField.text!, caption: captionField.text!)
        myObjects.append(myNewImage)
        print(myObjects)
        
        dismiss(animated: true) { 
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
