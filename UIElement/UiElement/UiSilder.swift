//
//  UiSilder.swift
//  UIElement
//
//  Created by zed on 9/3/21.
//
import UIKit

class UiSilder: UIViewController {
    
    @IBOutlet weak var numberSilder: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "")
        self.navigationItem.backBarButtonItem?.tintColor = .black
    }
    @IBAction func silderNumber(_ sender: UISlider) {
        
        numberSilder.text = "\(Int(sender.value))"
        
    }
    
    @IBAction func backBtn(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nextBtn(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(identifier: "UiSwitch")as? UiSwitch
        navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    
}
