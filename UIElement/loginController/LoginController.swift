//
//  LoginController.swift
//  UIElement
//
//  Created by zed on 9/9/21.
//

import UIKit

class LoginController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var loginNumberText: UITextField!
    @IBOutlet weak var comformPw: UITextField!
    
    var utils:StorybaordUtils!
    
    private let name = UserDefaults.standard.object(forKey: "name") as! String
    private let pass   = UserDefaults.standard.object(forKey: "pass") as! String
    
    override func viewDidLoad() {
        super .viewDidLoad()
        utils = StorybaordUtils.init(storyboard: self.storyboard)
        self.navigationController?.isNavigationBarHidden = true
        
        // hide text password
        self.comformPw.isSecureTextEntry = true

    }
    
    //    Connect textField with return key
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
        
            comformPw.delegate = self
            comformPw.returnKeyType = .done
            
        }

    
    @IBAction func registerBtn(_ sender: Any) {
        
        let vc = utils.getViewController(by: "register")
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func loginBtn(_ sender: Any) {
    
//        let name = UserDefaults.standard.object(forKey: "name") as! String
//        let pass   = UserDefaults.standard.object(forKey: "pass") as! String
//        print(name)
//        print(pass)
        print("account: ", loginNumberText.text)
        print("pass: " ,comformPw.text)
        print("name",name)
        print("pass",pass)
        if loginNumberText.text == "" && comformPw.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please check your input user and password ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismess", style: .cancel, handler: { alert in

            }))
            present(alert, animated: true)

        }else if loginNumberText.text == name && comformPw.text == pass {
//            let vc = storyboard?.instantiateViewController(identifier: "Menu") as? MenuController
//            navigationController?.pushViewController(vc!, animated: true)
            let vc = utils.getViewController(by: "MenuList", by: "xib")
            navigationController?.pushViewController(vc, animated: true)
            navigationController?.isNavigationBarHidden = true
        }else{
            
            let alert = UIAlertController(title: "Error", message: "invalid password...!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismess", style: .cancel, handler: { alert in

            }))
            present(alert, animated: true)

        }
      

    }
            // MARK: Function for return key
            func textFieldShouldReturn(_ textField: UITextField) -> Bool
            {
                if loginNumberText.text == "" && comformPw.text == ""{
                    let alert = UIAlertController(title: "Error", message: "Please check your input user and password ", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Dismess", style: .cancel, handler: { alert in
                        
                    }))
                    present(alert, animated: true)
                    comformPw.resignFirstResponder()
                   
                }else if loginNumberText.text == name && comformPw.text == pass {
//                    let vc = storyboard?.instantiateViewController(identifier: "Menu") as? MenuController
//                    navigationController?.pushViewController(vc!, animated: true)
                    
                    let vc = utils.getViewController(by: "MenuList", by: "xib")
                    navigationController?.pushViewController(vc, animated: true)
                    navigationController?.isNavigationBarHidden = true
                    comformPw.resignFirstResponder()
                }else{
                    let alert = UIAlertController(title: "Error", message: "invalid password...!", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Dismess", style: .cancel, handler: { alert in
                        
                    }))
                    present(alert, animated: true)
                    comformPw.resignFirstResponder()
                }
        //        comformPw.resignFirstResponder()
                return true
            }
    

    
}
