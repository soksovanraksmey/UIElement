//
//  ProfileController.swift
//  UIElement
//
//  Created by zed on 9/15/21.
//

import UIKit

class ProfileController: UIViewController {

    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var password: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: " ")
        self.navigationItem.backBarButtonItem?.tintColor = .black
        
        if let value = UserDefaults.standard.object(forKey: "name") as? String, let pass = UserDefaults.standard.object(forKey: "pass") as? String{
            
            userName.text = value
            password.text = pass
        }
        
    }
    
}
