//
//  FirstSection.swift
//  ActionBarManagerExample
//
//  Created by Nelson Dominguez Leon on 15/09/16.
//  Copyright © 2016 ODIGEO. All rights reserved.
//

import Foundation
import TableViewKit
import ActionBarManager

class FirstSection: Section {
    
    var items: ObservableArray<Item> = []
    var actionBarManager: ActionBarManager!
    
    init(actionBarManager: ActionBarManager) {
        self.actionBarManager = actionBarManager
        
        let textFieldItem1 = TextFieldItem(placeHolder: "Name", actionBarDelegate: self.actionBarManager)
        items.append(textFieldItem1)
        
        let textFieldItem2 = TextFieldItem(placeHolder: "Lastname", actionBarDelegate: self.actionBarManager)
        items.append(textFieldItem2)
    }
}
