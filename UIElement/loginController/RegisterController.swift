//
//  LoginController.swift
//  UIElement
//
//  Created by zed on 9/9/21.
//

import UIKit


class  RegisterController: UIViewController {
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var textPhoneNumber: UITextField!
    
    @IBOutlet weak var textPassword: UITextField!
    
    @IBOutlet weak var textComformPw: UITextField!
    var utils: StorybaordUtils!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        utils = StorybaordUtils.init(storyboard: self.storyboard)
      
        loginBtn.layer.cornerRadius = 20
        
//        self.navigationController?.isNavigationBarHidden = true
        
    }
    @IBAction func loginBtn(_ sender: Any) {
        
        let vc = utils.getViewController(by: "login")!
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func registerBtn(_ sender: Any) {

        let vc = storyboard?.instantiateViewController(identifier: "login") as? LoginController
        navigationController?.pushViewController(vc!, animated: true)
        navigationController?.isNavigationBarHidden = false
    }
}
