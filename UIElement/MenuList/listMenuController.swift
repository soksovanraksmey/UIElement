//
//  listMenuController.swift
//  AutoLayout
//
//  Created by zed on 9/15/21.
//

import UIKit

struct ControllerId {
    var storyboardName: String
    var storyboardID: String
}



class listMenuController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    var util:StorybaordUtils?
    
    let imageMenu = ["user","docs","info","location","email","gear"]
    let nameOfMenu = ["UserProfile","Lesson","Infomation","Location","Email","Setting"]
    
    var nameController = [ControllerId(storyboardName: "Profile", storyboardID: "profile"),
                          ControllerId(storyboardName: "Main", storyboardID: "listMenu"),
                          ControllerId(storyboardName: "InfoApp", storyboardID: "infoApp"),
                          ControllerId(storyboardName: "Location", storyboardID: "location"),
                          ControllerId(storyboardName: "Email", storyboardID: "email"),
                          ControllerId(storyboardName: "Setting", storyboardID: "setting")
                        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        util = StorybaordUtils.init(storyboard: self.storyboard)
            
        let nib = UINib(nibName: "CollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "CollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: " ")
        self.navigationItem.backBarButtonItem?.tintColor = .black
       
//        collectionView.collectionViewLayout = UICollectionViewLayout()

    }
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = view.frame.width
        let itemSize = (width / 2)
        return CGSize(width: itemSize, height: itemSize)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageMenu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! XibCollectionViewCell
        
        cell.image.image = UIImage(named:imageMenu[indexPath.row])
        cell.nameItem.text = nameOfMenu[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let storyboardName = nameController[indexPath.row].storyboardName
        let storyboardId = nameController[indexPath.row].storyboardID
    
        let vc = util?.getViewController(by: storyboardName, by: storyboardId)
        navigationController?.isNavigationBarHidden = true
        navigationController?.pushViewController(vc!, animated: true)
    }


}

