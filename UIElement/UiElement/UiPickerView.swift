//
//  UiPickerView.swift
//  UIElement
//
//  Created by zed on 9/3/21.
//

import UIKit

class UiPickerView: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
  
    
    
    @IBOutlet weak var pickerView: UIPickerView!

    @IBOutlet weak var lblName: UILabel!
    
    let days = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "")
        self.navigationItem.backBarButtonItem?.tintColor = .black
    }
    
    // MARK: function of UIPicker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return days.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        lblName.text = days[row]
        lblName.resignFirstResponder()
        
        return days[row]
    }
    
 
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    @IBAction func nextBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "UiImageView") as? UiImageView
        navigationController?.pushViewController(vc!, animated: true)
    }
}

