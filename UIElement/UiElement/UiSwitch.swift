//
//  UiSwitch.swift
//  UIElement
//
//  Created by zed on 9/3/21.
//

import UIKit

class UiSwitch: UIViewController {
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var backBtnName: UIButton!
    @IBOutlet weak var nextBtnName: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "")
        self.navigationItem.backBarButtonItem?.tintColor = .black
    }
   
    @IBAction func switchBackground(_ sender: UISwitch) {
        if sender.isOn{
            view.backgroundColor = .black
            lblName.textColor = UIColor.white
            lblTitle.textColor = UIColor.white
           
            
        }else{
            view.backgroundColor = .white
            lblName.textColor = UIColor.black
            lblTitle.textColor = UIColor.black
        }
    }
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nextBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "UiPickerView") as? UiPickerView
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    
}

