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
   
       tapOnView1(viewName: view1)
        tapOnView2(viewName: view2)
        tapOnView3(viewName: view4)
    
        
    }
    private func tapOnView1(viewName: UIView){
          let tapView = UITapGestureRecognizer()
          viewName.addGestureRecognizer(tapView)
        tapView.addTarget(self, action: #selector(tapAction))
      
    }
    
    // Add tapAction on View with UITapGestureReconizer()
    private func tapOnView2(viewName: UIView){
       let tapView = UITapGestureRecognizer()
       viewName.addGestureRecognizer(tapView)
       tapView.addTarget(self, action: #selector(tapAction2))
      
   }
    private func tapOnView3(viewName: UIView){
       let tapView = UITapGestureRecognizer()
       viewName.addGestureRecognizer(tapView)
       tapView.addTarget(self, action: #selector(tapAction3))
      
   }
    @objc func tapAction() {
        let vc = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(identifier: "listMenu")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func tapAction2() {
        let vc = UIStoryboard(name: "Profile", bundle: Bundle.main).instantiateViewController(identifier: "profile")
        navigationController?.pushViewController(vc, animated: true)

     }
    @objc func tapAction3() {
        let vc = UIStoryboard(name: "InfoApp", bundle: Bundle.main).instantiateViewController(identifier: "infoApp")
        navigationController?.pushViewController(vc, animated: true)

     }

    private func shadowForViewCorner(viewName: UIView){
        viewName.layer.cornerRadius = 20
        viewName.layer.shadowOffset = CGSize(width: 10,
                                                height: 10)
        viewName.layer.shadowRadius = 3
        viewName.layer.shadowOpacity = 0.1
    }
    
}



