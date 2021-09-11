//
//  MainViewController.swift
//  UIElement
//
//  Created by zed on 9/7/21.
//

import UIKit


struct Lesson {
    let title: String
    let identifier: String
}



class MainViewController: UIViewController ,UISearchResultsUpdating{
    
    
    private let lessons = [
        Lesson(title: "UILabel", identifier: "ViewController"),
        Lesson(title: "UITextField", identifier: "UiTextField"),
        Lesson(title: "UITextView", identifier: "UiTextView"),
        Lesson(title: "UIButton", identifier: "UiButton"),
        Lesson(title: "UISlider", identifier: "UiSilder"),
        Lesson(title: "UISwitch", identifier: "UiSwitch"),
        Lesson(title: "UIPickerView", identifier: "UiPickerView"),
        Lesson(title: "UIImageView", identifier: "UiImageView"),
        Lesson(title: "UIImage", identifier: "imageUI"),
        Lesson(title: "UISegmentControl", identifier: "UiSegmented"),
        Lesson(title: "UITableView", identifier: "UiTableView"),
        Lesson(title: "UICollectionView", identifier: "collection"),
        Lesson(title: "UIScrollView", identifier: "UiScrollView"),
        Lesson(title: "UIAlertController", identifier: "UiAlertController"),
        Lesson(title: "UINavigationController", identifier: "UiNavigation"),
        Lesson(title: "UITabbarController", identifier: "tabBar")
    ]
    
    var resultSearch:[Lesson] = []
    
    private var utils: StorybaordUtils!
    
    @IBOutlet private weak var tblView: UITableView!
    
    let searchController = UISearchController(searchResultsController: nil)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.hidesBackButton = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
        utils = StorybaordUtils.init(storyboard: self.storyboard)
        
        tblView.delegate = self
        tblView.dataSource = self
        
        navigationItem.searchController = searchController
        
        // remove background of search. when we search is gray background of table
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchResultsUpdater = self
        
        
    }
    
    //    MARK:- Protocol of UISearchResultUpdating - function
    func updateSearchResults(for searchController: UISearchController) {
        
        if let searchItem = searchController.searchBar.text{
            print(searchItem)
            
            resultSearch = lessons.filter({ (search) -> Bool in
                return search.title.lowercased().contains( searchItem.lowercased() )
            })
            tblView.reloadData()
            print("Title Lesson = \(resultSearch)")
            
        }
        
        
    }
    
}// viewController

// MARK:- data of tableViwe
extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  searchController.isActive ? resultSearch.count : lessons.count
        //lessons.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.00
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainviewcellid")
        //
        //        cell?.textLabel?.text = lessons[indexPath.row].title
        
        
        //        MARK: check Condiction for search
        if !lessons.isEmpty && resultSearch.isEmpty{
            cell?.textLabel?.text = lessons[indexPath.row].title
            return cell!
        }
        if resultSearch.isEmpty {
            return cell!
        }
        
        cell?.textLabel?.text = searchController.isActive ? resultSearch[indexPath.row].title : lessons[indexPath.row].title
        print(resultSearch)
        print(searchController.isActive)
        //        lessons[indexPath.row].title
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        let identifier = lessons[indexPath.row].identifier
        //        guard !resultSearch.isEmpty else {
        //            return
        //        }
        let identifier = searchController.isActive ? resultSearch[indexPath.row].identifier : lessons[indexPath.row].identifier
        //
        let vc = utils.getViewController(by: identifier)
        navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    
}

