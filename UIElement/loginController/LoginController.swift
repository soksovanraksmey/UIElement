//
//  LoginController.swift
//  UIElement
//
//  Created by zed on 9/9/21.
//

import UIKit

class LoginController: UIViewController{
    
    @IBOutlet weak var loginNumberText: UITextField!
    @IBOutlet weak var comformPw: UITextField!
    
    var utils:StorybaordUtils!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        utils = StorybaordUtils.init(storyboard: self.storyboard)
        self.navigationController?.isNavigationBarHidden = true
        
        // hide text password
        self.comformPw.isSecureTextEntry = true
        

        
    }
  
    
    @IBAction func registerBtn(_ sender: Any) {
        
        let vc = utils.getViewController(by: "register")!
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func loginBtn(_ sender: Any) {
       
        if loginNumberText.text == "" && comformPw.text == ""{
            let alert = UIAlertController(title: "Error", message: "Please check your input user and password ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismess", style: .cancel, handler: { alert in
                
            }))
            present(alert, animated: true)
           
        }else if loginNumberText.text == "admin" && comformPw.text == String(123) {
            let vc = storyboard?.instantiateViewController(identifier: "Menu") as? MenuController
            navigationController?.pushViewController(vc!, animated: true)
            navigationController?.isNavigationBarHidden = false
        }else{
            let alert = UIAlertController(title: "Error", message: "invalid password...!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismess", style: .cancel, handler: { alert in
                
            }))
            present(alert, animated: true)
           
        }
        
        
       
    }
  

    
}
