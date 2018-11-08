//
//  ViewController.swift
//  TableView
//
//  Created by Denny Feng on 10/27/18.
//  Copyright © 2018 Denny Feng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        let cellContent = ["D", "C", "F", "LP"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return cellContent.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
       
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell" )
       
        cell.textLabel?.text = cellContent[indexPath.row]
        
        return cell
    }

override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

