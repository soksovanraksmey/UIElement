//
//  UiTextField.swift
//  UIElement
//
//  Created by zed on 9/3/21.
//

import UIKit

class UiTextField: UIViewController {
    
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var showName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "")
        self.navigationItem.backBarButtonItem?.tintColor = .black
    }
    
    @IBAction func btnEnterName(_ sender: Any) {
      
        let userName = TextField.text
        showName.text = userName
        TextField.clearsOnBeginEditing = .BooleanLiteralType()
        TextField.clearButtonMode = .always
//        TextField.clearButtonMode = .never
        
    }
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func NextBtn(_ sender: Any) {
        let vc  = storyboard?.instantiateViewController(identifier: "UiTextView") as? UiTextView
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
}
