//
//  LoginViewController.swift
//  Carousel
//
//  Created by Doris Hernandez on 10/24/16.
//  Copyright © 2016 Doris Hernandez. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollViewLogin: UIScrollView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollViewLogin.delegate = self
        
        scrollViewLogin.contentSize = scrollViewLogin.frame.size
        
        scrollViewLogin.contentInset.bottom =  80
        
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -400
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            
            self.buttonParentView.frame.origin.y = self.buttonInitialY + self.buttonOffset
            self.scrollViewLogin.contentOffset.y = self.scrollViewLogin.contentInset.bottom
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didPressLogin(_ sender: AnyObject) {
        
        
        
        
        
    }
    
    
    

}
