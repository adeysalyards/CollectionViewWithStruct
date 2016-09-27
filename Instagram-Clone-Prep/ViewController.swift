//
//  ViewController.swift
//  Instagram-Clone-Prep
//
//  Created by Salyards, Adey on 9/26/16.
//  Copyright © 2016 Salyards, Adey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var instagramCollectionView: UICollectionView!
    
    var instagramImages: [UIImage]! = []
    var usernames: [String]! = []
    var captions: [String]! = []
    
    struct instagramImage {
        let image: UIImage
        let username: String
        let caption: String
    }
    
    let myObjects = [
        instagramImage(image: #imageLiteral(resourceName: "image1"), username: "adeylady123", caption: "kickstarter pitchfork"),
        instagramImage(image: #imageLiteral(resourceName: "image2"), username: "Rachel Posner", caption: "more informaiton")
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        instagramCollectionView.dataSource = self
        instagramCollectionView.delegate = self
        
        instagramImages = [#imageLiteral(resourceName: "image1"), #imageLiteral(resourceName: "image2"), #imageLiteral(resourceName: "image3"), #imageLiteral(resourceName: "image4"), #imageLiteral(resourceName: "image5"), #imageLiteral(resourceName: "image6")]
        usernames = ["adeylady123", "RachelPosner", "fancypants", "cutedogs", "dogs of instagram", "cats of instagram"]
        captions = ["Kickstarter pitchfork meh fixie slow-carb stumptown migas enamel pin polaroid. Unicorn listicle slow-carb direct trade 8-bit.",
            "Whatever pop-up tousled, plaid vegan ugh church-key lo-fi fixie four loko.",
            "Locavore live-edge readymade, heirloom hammock XOXO snackwave.",
            "Brunch tumeric master cleanse taxidermy tattooed blue bottle.",
            "Selfies hammock dreamcatcher, succulents slow-carb banh mi franzen thundercats hot chicken banjo whatever mixtape.",
            "Chartreuse woke flexitarian lumbersexual kickstarter, whatever yr microdosing XOXO."]
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = instagramCollectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! myCollectionViewCell
        
        cell.profilePic.layer.cornerRadius = cell.profilePic.frame.height/2
        cell.instagramImage.image = myObjects[indexPath.row].image
        cell.captionLabel.text = myObjects[indexPath.row].caption
        cell.userLabel.text = myObjects[indexPath.row].username
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myObjects.count
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

