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

        if textPassword.text == textComformPw.text{
            UserDefaults.standard.set(textPhoneNumber.text, forKey: "name")
            UserDefaults.standard.set(textPassword.text, forKey: "pass")
            UserDefaults.standard.set(textComformPw.text,forKey: "comformPass")
            
            let alert = UIAlertController(title: "Message", message: "Register successfully ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dissmes", style: .cancel, handler: { alert in
            }))
            present(alert, animated: true)
            let name = UserDefaults.standard.object(forKey: "name") as? String
          let pass = UserDefaults.standard.object(forKey: "pass") as? String
            
            print(name)
            print(pass)
            
        }else{
            
            let alert = UIAlertController(title: "Message", message: "your Passwork and your comform passwork is not the same ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dissmes", style: .cancel, handler: { alert in
            }))
            present(alert, animated: true)
        }
        
//        let vc = storyboard?.instantiateViewController(identifier: "login") as? LoginController
//        navigationController?.pushViewController(vc!, animated: true)
        navigationController?.isNavigationBarHidden = false
    }
}
