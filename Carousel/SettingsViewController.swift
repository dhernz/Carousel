//
//  SettingsViewController.swift
//  Carousel
//
//  Created by Doris Hernandez on 10/24/16.
//  Copyright © 2016 Doris Hernandez. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var settingsImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = settingsImage.frame.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didPressCancel(_ sender: AnyObject) {
        
        dismiss(animated: true, completion: nil)
        
        
    }

}
