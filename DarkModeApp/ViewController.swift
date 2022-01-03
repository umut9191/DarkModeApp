//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Mac on 4.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cahngeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //this is for independent change current controller screen mode doesnt care about what mode using in phone currently
        //overrideUserInterfaceStyle = .dark
        
        // if we want all app screens be as what we want mode than we go info.plist file
        // user ınterface style --> Dark,Light
        //but xcode 12 UIUserInterfaceStyle instade of user ınterface style
     
    }
 
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        // if user phone in dark mode;
        if userInterfaceStyle == .dark {
            cahngeButton.tintColor = UIColor.white
        }
        if userInterfaceStyle == .light {
            cahngeButton.tintColor = UIColor.blue
        }
    }

}

