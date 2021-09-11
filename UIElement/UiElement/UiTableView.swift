//
//  UiTableView.swift
//  UIElement
//
//  Created by zed on 9/3/21.
//

import UIKit

class UiTableView: UIViewController,UITableViewDelegate,UITableViewDataSource {
   

    
    @IBOutlet weak var tableView: UITableView!
    
    var days = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.delegate = self
        tableView.dataSource = self
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "")
        self.navigationItem.backBarButtonItem?.tintColor = .black
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return days.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = days[indexPath.row]
        
        
        return cell
    }
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    
    }
    
    
    @IBAction func nextBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "collection") as? UiCollectionView
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    
}
