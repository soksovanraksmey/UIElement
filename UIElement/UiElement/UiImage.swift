//
//  UiImage.swift
//  UIElement
//
//  Created by zed on 9/3/21.
//

import UIKit

class UiImage: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "")
        self.navigationItem.backBarButtonItem?.tintColor = .black
        
    }
    @IBAction func nextBtn(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(identifier: "UiSegmented") as? UiSegmented
        navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}

