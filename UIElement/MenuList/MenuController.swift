//
//  MenuController.swift
//  AutoLayout
//
//  Created by zed on 9/11/21.
//

import UIKit

class MenuController: UIViewController{
    
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
//        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
            // corner with one side
//        view.layer.cornerRadius = 40
//        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: " ")
        self.navigationItem.backBarButtonItem?.tintColor = .black
        
        shadowForViewCorner(viewName: view1)
        shadowForViewCorner(viewName: view2)
        shadowForViewCorner(viewName: view3)
        shadowForViewCorner(viewName: view4)
        shadowForViewCorner(viewName: view5)
        shadowForViewCorner(viewName: view6)
        tapOnView(viewName: view1)
        tapOnView(viewName: view2)
        tapOnView(viewName: view3)
        tapOnView(viewName: view4)
        tapOnView(viewName: view5)
        tapOnView(viewName: view6)
      
    
        
    }
    // Add tapAction on View with UITapGestureReconizer()
 private func tapOnView(viewName: UIView){
       let tapView = UITapGestureRecognizer()
       viewName.addGestureRecognizer(tapView)
       tapView.addTarget(self, action: #selector(tapAction))
      
   }
    @objc func tapAction() {
         let vc = storyboard?.instantiateViewController(withIdentifier: "listMenu") as! MainViewController
         self.navigationController?.pushViewController(vc, animated: true)
         
     }
   
    private func shadowForViewCorner(viewName: UIView){
        viewName.layer.cornerRadius = 20
        viewName.layer.shadowOffset = CGSize(width: 10,
                                                height: 10)
        viewName.layer.shadowRadius = 3
        viewName.layer.shadowOpacity = 0.1
    }
    
}



