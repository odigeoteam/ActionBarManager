//
//  ViewController.swift
//  ActionBarManagerExample
//
//  Created by Nelson Dominguez Leon on 15/09/16.
//  Copyright © 2016 ODIGEO. All rights reserved.
//

import UIKit
import TableViewKit
import ActionBarManager

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var tableViewManager: TableViewManager!
    var actionBarManager: ActionBarManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "ActionBarManager"
        
        setup()
    }
    
    func setup() {

        tableViewManager = TableViewManager(tableView: tableView)
        actionBarManager = ActionBarManager(manager: tableViewManager)
        
        let firstSection = FirstSection(actionBarManager: actionBarManager)
        tableViewManager.sections.append(firstSection)
    }
}

