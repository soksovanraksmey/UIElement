//
//  UiScrollView.swift
//  UIElement
//
//  Created by zed on 9/3/21.
//

import UIKit

class UiScrollView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "")
        self.navigationItem.backBarButtonItem?.tintColor = .black
        
        self.navigationController?.isNavigationBarHidden = false
//        MARK: design by code
//        let scrollView = UIScrollView(frame: CGRect(x: 10, y: 10, width: view.frame.width - 20 , height: view.frame.height - 20))
//        scrollView.backgroundColor = .black
//        view.addSubview(scrollView)
//
//        let topLbl = UILabel(frame: CGRect(x: 50, y: 50, width: 300, height: 100))
//        topLbl.textColor = .white
//        topLbl.text = "UI Scroll View"
//        scrollView.addSubview(topLbl)
//
//        scrollView.contentSize = CGSize(width: view.frame.width, height: 2200)
//
        
    }
   
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nextbtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "UiAlertController") as? UiAlertController
        navigationController?.pushViewController(vc!, animated: true)
    }
    
}

