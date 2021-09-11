//
//  ViewController.swift
//  UIElement
//
//  Created by zed on 9/3/21.
//

import UIKit

class ViewController: UIViewController{
    
    private var utils: StorybaordUtils!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        utils = StorybaordUtils.init(storyboard: self.storyboard)
        
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.backBarButtonItem?.tintColor = .black
     
        
    }

    @IBAction func uiLblBtn(_ sender: Any) {
        let vc = utils.getViewController(by: "ViewController")
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    
    @IBAction func uiTextFieldBtn(_ sender: Any) {
        let vc = utils.getViewController(by: "UiTextField")
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func UiTextViewBtn(_ sender: Any) {
        let vc  = utils.getViewController(by: "UiTextView")
        self.navigationController?.pushViewController(vc!, animated: true)
       
    }
    
    @IBAction func UiBtn(_ sender: Any) {
      
        let vc = utils.getViewController(by: "UiButton")
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func UISilderBtn(_ sender: Any) {
        let vc = utils.getViewController(by: "UiSilder")
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func UipickerBtn(_ sender: Any) {
        let vc = utils.getViewController(by: "UiPickerView")
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func UiImageView(_ sender: Any) {
        let vc = utils.getViewController(by: "UiImageView")
        navigationController?.pushViewController(vc!, animated: true)
       
    }
    
    @IBAction func uiImage(_ sender: Any) {
        let vc = utils.getViewController(by: "imageUI")
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func uiSegmented(_ sender: Any) {
        let vc = utils.getViewController(by: "UiSegmented")
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func uiAlertController(_ sender: Any) {
        let vc = utils.getViewController(by: "UiAlertController")
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func uiNavigationController(_ sender: Any) {
        let vc = utils.getViewController(by: "UiNavigation")
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func uiTabBar(_ sender: Any) {
        let vc = utils.getViewController(by: "tabBar")
        navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    @IBAction func uiTable(_ sender: Any) {
        let vc = utils.getViewController(by: "UiTableView")
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func uiCollection(_ sender: Any) {
        let vc = utils.getViewController(by: "collection")
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func UISwitchBtn(_ sender: Any) {
        
        let vc = utils.getViewController(by: "UiSwitch")
        navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    @IBAction func uiScrollView(_ sender: Any) {
        let vc = utils.getViewController(by: "UiScrollView")
        navigationController?.pushViewController(vc!, animated: true)
        
    }
    
}
