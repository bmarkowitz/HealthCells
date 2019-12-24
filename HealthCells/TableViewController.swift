//
//  ViewController.swift
//  HealthCells
//
//  Created by Brett Markowitz on 12/23/19.
//  Copyright © 2019 Brett Markowitz. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let dataSource = TableViewDataSource()
    
    override func loadView() {
        tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(HealthTableViewCell.self, forCellReuseIdentifier: "HealthCell")
        
        tableView.delegate = dataSource
        tableView.dataSource = dataSource
        tableView.estimatedRowHeight = 2
        
        navigationItem.title = "Summary"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
