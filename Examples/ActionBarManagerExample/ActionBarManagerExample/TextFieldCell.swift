//
//  TextFieldCell.swift
//  ActionBarManagerExample
//
//  Created by Nelson Dominguez Leon on 15/09/16.
//  Copyright © 2016 ODIGEO. All rights reserved.
//

import Foundation
import TableViewKit
import ActionBarManager

public class TextFieldCell: UITableViewCell, ItemCompatible, ActionBarDelegate {
    
    public var item: Item?
    
    public var textFieldItem: TextFieldItem {
        get {
            return item as! TextFieldItem
        }
    }
    
    @IBOutlet var textField: UITextField!
    
    override public func awakeFromNib() {
        
        super.awakeFromNib()
        
        selectionStyle = .none
        
        textField.addTarget(self, action: #selector(onTextChange), for: .editingChanged)
        textField.inputAccessoryView = ActionBar(delegate: self)
    }
    
    public func onTextChange(textField: UITextField) {
        textFieldItem.value = textField.text
    }
    
    public func actionBar(_ actionBar: ActionBar, direction: Direction)  {
        textFieldItem.actionBarDelegate.actionBar(actionBar, direction: direction)
    }
    public func actionBar(_ actionBar: ActionBar, doneButtonPressed doneButtonItem: UIBarButtonItem) {
        textField.resignFirstResponder()
    }
    
    override open var isFirstResponder: Bool {
        get {
            return textField.isFirstResponder
        }
    }
    
    override open func becomeFirstResponder() -> Bool {
        return textField.becomeFirstResponder()
    }
    
}

public class TextFieldDrawer: CellDrawer {
    
    public static let nib = UINib(nibName: String(describing: TextFieldCell.self), bundle: nil)
    public static let type = CellType.nib(TextFieldDrawer.nib, TextFieldCell.self)
    
    public static func draw(_ cell: UITableViewCell, with item: Any) {
        
        let textCell = cell as! TextFieldCell
        let textItem = item as! TextFieldItem
        
        textCell.textField.placeholder = textItem.placeHolder
        textCell.textField.text = textItem.value
    }
}
