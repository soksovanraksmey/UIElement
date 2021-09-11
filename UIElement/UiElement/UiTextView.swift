//
//  UiTextView.swift
//  UIElement
//
//  Created by zed on 9/3/21.
//

import UIKit

class UiTextView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "")
        self.navigationItem.backBarButtonItem?.tintColor = .black
    }
    
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nextBtn(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(identifier: "UiButton") as? UiButton
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
    
    
}
