//
//  UiAlertController.swift
//  UIElement
//
//  Created by zed on 9/3/21.
//

import UIKit

class UiAlertController: UIViewController {
    
    @IBOutlet weak var alertMassage: UIButton!
    
    @IBOutlet weak var alertAction: UIButton!
    
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "")
        self.navigationItem.backBarButtonItem?.tintColor = .black
        
        alertMassage.layer.cornerRadius = 10
        alertAction.layer.cornerRadius = 10
        backBtn.layer.cornerRadius = 10
        nextBtn.layer.cornerRadius = 10
        
    }
    
    @IBAction func alertBtn(_ sender: Any) {
        alertMessage()
        
    }
    
    @IBAction func alertSheet(_ sender: Any) {
        alertActionSheet()
    }
    
    func alertMessage(){
        
        let alert = UIAlertController(title: "Title", message: "Hello world ", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { alert in print("tapped Dismiss")
            
        }))
        present(alert, animated: true)
    }
    func alertActionSheet() {
        let actionSheet = UIAlertController(title: "Title", message: "Hello World", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Dimiss", style: .cancel, handler: { actionSheet in
            print("Did tapped cancel")
        }))
        present(actionSheet, animated: true)
    }
    
    

    
    @IBAction func nextBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "UiNavigation") as? UiNavigationController
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func bachBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

