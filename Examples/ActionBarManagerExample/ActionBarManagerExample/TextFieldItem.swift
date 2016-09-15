//
//  TextFieldCell.swift
//  ExampleTableViewKit
//
//  Created by Alfredo Delli Bovi on 28/07/16.
//  Copyright © 2016 ODIGEO. All rights reserved.
//

import Foundation
import TableViewKit
import ActionBarManager

public class TextFieldItem: UIResponder, Item {
        
    public var drawer: CellDrawer.Type = TextFieldDrawer.self
    public var placeHolder: String?
    public var value: String?
    public let actionBarDelegate: ActionBarDelegate
    
    public init(placeHolder: String?, actionBarDelegate: ActionBarDelegate) {
        self.placeHolder = placeHolder
        self.actionBarDelegate = actionBarDelegate
    }
    
    public var validationContent: String? {
        get {
            return value
        }
    }
    
    override open var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
}
