//
//  ViewController.swift
//  UiStatusBarStyles
//
//  Created by Lucian Cancescu on 05/03/15.
//  Copyright (c) 2015 Lucian Cancescu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentBackgroundColor = "light"
    var statusBarIsVisible = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        switch currentBackgroundColor {
        case "dark": return UIStatusBarStyle.LightContent
        default: return UIStatusBarStyle.Default
        }
    }
    
    override func prefersStatusBarHidden() -> Bool {
        UIStatusBarAnimation.Fade
        if statusBarIsVisible {
            return false
        } else {
            return true
        }
    }
    

    @IBAction func setWhiteBackground() {
        self.view.backgroundColor = UIColor.whiteColor()
        currentBackgroundColor = "light"
        preferredStatusBarStyle()
        setNeedsStatusBarAppearanceUpdate()
    }
    
    
    @IBAction func setDarkBackground() {
        self.view.backgroundColor = UIColor.blackColor()
        currentBackgroundColor = "dark"
        preferredStatusBarStyle()
        setNeedsStatusBarAppearanceUpdate()
    }
    
    @IBAction func hideStatusBar() {
        statusBarIsVisible = false
        prefersStatusBarHidden()
        setNeedsStatusBarAppearanceUpdate()
    }
    
    @IBAction func showStatusBar() {
        statusBarIsVisible = true
        prefersStatusBarHidden()
        setNeedsStatusBarAppearanceUpdate()
    }
}

