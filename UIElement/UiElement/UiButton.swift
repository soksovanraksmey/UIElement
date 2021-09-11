//
//  UiButton.swift
//  UIElement
//
//  Created by zed on 9/3/21.
//

import UIKit

class UiButton: UIViewController {
    
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var addNumber: UIButton!
    @IBOutlet weak var minus:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNumber.layer.cornerRadius = 20
        minus.layer.cornerRadius = 20
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "")
        self.navigationItem.backBarButtonItem?.tintColor = .black
    }
    
    @IBAction func addNumebr(_ sender: Any) {
        
        let lblNumber = number.text!
        guard let num = Int(lblNumber) else { return }
        let add = num + 1
        number.text = "\(add)"
    }
    
    @IBAction func minus(_ sender: Any) {
        let lblNumber = number.text!
        guard let num = Int(lblNumber) else { return }
        let minus = num - 1
        number.text = "\(minus)"
        
    }
    
    
    
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func NextBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "UiSilder") as? UiSilder
        navigationController?.pushViewController(vc!, animated: true)
    }
    
}
