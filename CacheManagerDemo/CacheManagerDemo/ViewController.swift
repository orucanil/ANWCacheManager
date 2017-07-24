//
//  ViewController.swift
//  CacheManagerDemo
//
//  Created by Anil ORUC on 24/07/2017.
//  Copyright © 2017 Anil ORUC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let photoURL: String = "demo.url"
        
        // Remove to file directory
        ANWCacheManager.instance.removeObject(key: photoURL)
        let dataKey: String = "demo.key"
        
        // Remove to user defaults
        ANWCacheManager.instance.removeFromUserDefaults(key: dataKey)
        
        // Save to file directory
        let data: String = "demo.key"
        ANWCacheManager.instance.setObject(object: data, key: dataKey)
        
        // Save to file directory
        let imageName: String = "demo.image.name"
        let imageKey: String = "demo.image.key"
        ANWCacheManager.instance.setImage(image: UIImage(named: imageName), key: imageKey)
        
        // Remove to file directory
        ANWCacheManager.instance.removeObject(key: imageKey)
        
        // Save to user defaults
        ANWCacheManager.instance.writeToUserDefaults(object: data, key: dataKey)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

