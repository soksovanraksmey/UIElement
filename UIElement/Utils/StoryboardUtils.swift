//
//  StoryboardUtils.swift
//  UIElement
//
//  Created by zed on 9/7/21.
//

import UIKit

class StorybaordUtils {
    
    private var storyboard: UIStoryboard?
    
    init(storyboard: UIStoryboard?) {
        self.storyboard = storyboard
    }
    
    func getViewController(by identifier: String) -> UIViewController? {
        let vc = storyboard?.instantiateViewController(identifier: identifier)
        return vc
    }
    
    
}
