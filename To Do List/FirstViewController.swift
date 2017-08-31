//
//  FirstViewController.swift
//  To Do List
//
//  Created by Ainor Syahrizal on 31/08/2017.
//  Copyright © 2017 Ainor Syahrizal. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var table: UITableView!
    
    var items: [String] = []
    
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return items.count
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create cell
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        // if user enter empty value
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        if let tempItems = itemsObject as? [String] {
            
            items = tempItems
        }
        
        table.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

