//
//  UiCollectionView.swift
//  UIElement
//
//  Created by zed on 9/3/21.
//

import  UIKit
class UiCollectionView: UIViewController{
   
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var photos = [
        ["f1","f2","f3","f4","f5"],
        ["s1","s2","s3","s4","s5"],
        ["c1","c2","c3","c4","c5"],
    ]
    
    let headerTitle = ["Footbell Tearm","Sport Bike","MotoCross"]
    
    let numberOfItem:CGFloat = 3
    let marginItem:CGFloat = 8
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "")
        self.navigationItem.backBarButtonItem?.tintColor = .black
       
    }
    @IBAction func nextBtn(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(identifier: "UiScrollView") as? UiScrollView
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
}

//MARK:- Layout size & LineSpace
extension UiCollectionView: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let fullWidth = view.frame.width
        let widthItem = (fullWidth / numberOfItem) - marginItem
        
        return CGSize(width: widthItem, height: widthItem)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return marginItem
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return marginItem
    }
    

}


// MARK:- Data CollectionView
extension UiCollectionView :UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return photos.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoid", for: indexPath) as!
            PhotoCollectionViewCell
        
//        cell.photoImageView.image = UIImage(named: "c1")
        
        cell.photoImageView.image = UIImage(named: photos[indexPath.section][indexPath.row])
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "titleheader", for: indexPath) as! HeaderCollectionReusableView
        
        header.lblHeaderName.text = headerTitle[indexPath.section]
    
        return header
    }
    
   
}
