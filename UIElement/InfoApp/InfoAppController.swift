//
//  InfoAppController.swift
//  UIElement
//
//  Created by zed on 9/15/21.
//

import UIKit

class InfoAppController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: " ")
        self.navigationItem.backBarButtonItem?.tintColor = .black
        
        
    }
    

}
