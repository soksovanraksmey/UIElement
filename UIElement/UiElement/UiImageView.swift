//
//  UiImageView.swift
//  UIElement
//
//  Created by zed on 9/3/21.
//

import UIKit

class UiImageView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "")
        self.navigationItem.backBarButtonItem?.tintColor = .black
     
    }
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func nextBtn(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(identifier: "imageUI") as? UiImage
        self.navigationController?.pushViewController(vc!, animated: true)
            
    }
    
    
    
}

