//
//  WelcomeViewController.swift
//  Carousel
//
//  Created by Doris Hernandez on 10/24/16.
//  Copyright © 2016 Doris Hernandez. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var carouselButton: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollViewWelcome: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollViewWelcome.delegate = self
        carouselButton.alpha = 0
        scrollViewWelcome.contentSize = CGSize(width: 1500, height: 667)
        scrollViewWelcome.frame.size = CGSize(width: 375, height: 667)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(_ scrollViewWelcome: UIScrollView) {
        let page: Int = Int(round(scrollViewWelcome.contentOffset.x / 375))
        pageControl.currentPage = page
        
        if page == 3 {
            pageControl.isHidden = true
            UIView.animate(withDuration: 1, animations: {
                self.carouselButton.alpha = 1
            })
            
        }
        
    }

}
