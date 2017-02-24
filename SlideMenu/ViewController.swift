//
//  ViewController.swift
//  SlideMenu
//
//  Created by Sanjay Mali on 24/02/17.
//  Copyright © 2017 Sanjay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    var menuShowing = false
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainView.layer.shadowOpacity = 1
        self.mainView.layer.shadowRadius = 5
    }
    
    @IBAction func showMenu(_ sender: Any) {
        if (menuShowing){
            leadingConstraint.constant = 0
            trailingConstraint.constant = 0
        }else {
            // Leading will be + value
            leadingConstraint.constant = 150
            //Trailing will be negative add - value
            trailingConstraint.constant = -150
            
        }
        UIView.animate(withDuration: 0.5, animations: {
            //This will reposition everything
            self.view.layoutIfNeeded()
        })
        menuShowing = !menuShowing
    }
    
}

