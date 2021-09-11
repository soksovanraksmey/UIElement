//
//  UiSegmented.swift
//  UIElement
//
//  Created by zed on 9/3/21.
//

import UIKit

class UiSegmented: UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var segmentLbl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "")
        self.navigationItem.backBarButtonItem?.tintColor = .black
    }
    
    
    @IBAction func segmentedColor(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            lblName.textColor = .black
            lblTitle.textColor = .black
            view.backgroundColor = .red
        }else if sender.selectedSegmentIndex == 1 {
           
            lblName.textColor = .white
            lblTitle.textColor = .white
            view.backgroundColor = .blue
            
        }else if sender.selectedSegmentIndex == 2{
           
            lblName.textColor = .white
            lblTitle.textColor = .white
            view.backgroundColor = .black
            segmentLbl.backgroundColor = .gray
        }else if sender.selectedSegmentIndex == 3{
            lblName.textColor = .black
            lblTitle.textColor = .black
            view.backgroundColor = .green
            
        }else if sender.selectedSegmentIndex == 4{
          
            view.backgroundColor = .white
        }
        
        
    }
    
    @IBAction func nextBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "UiTableView") as? UiTableView
        navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    @IBAction func backBtn(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
}

