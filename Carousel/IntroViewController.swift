//
//  IntroViewController.swift
//  Carousel
//
//  Created by Doris Hernandez on 10/20/16.
//  Copyright © 2016 Doris Hernandez. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var scrollViewIntro: UIScrollView!
    @IBOutlet weak var imageViewIntro: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollViewIntro.contentSize = imageViewIntro.frame.size    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
