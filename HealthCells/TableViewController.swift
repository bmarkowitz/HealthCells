//
//  ViewController.swift
//  HealthCells
//
//  Created by Brett Markowitz on 12/23/19.
//  Copyright © 2019 Brett Markowitz. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func loadView() {
        tableView = UITableView(frame: .zero, style: .insetGrouped)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
