//
//  LoginController.swift
//  UIElement
//
//  Created by zed on 9/9/21.
//

import UIKit

class LoginController: UIViewController {
    
    @IBOutlet weak var loginNumberText: UITextField!
    
    @IBOutlet weak var comformPw: UITextField!
    
    var utils:StorybaordUtils!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        utils = StorybaordUtils.init(storyboard: self.storyboard)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func registerBtn(_ sender: Any) {
        
        let vc = utils.getViewController(by: "register")!
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func loginBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "listMenu") as? MainViewController
        navigationController?.pushViewController(vc!, animated: true)
        navigationController?.isNavigationBarHidden = false
    }
    
}
