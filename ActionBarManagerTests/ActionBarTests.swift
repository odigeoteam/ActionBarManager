//
//  ActionBarManagerTests.swift
//  ActionBarManagerTests
//
//  Created by Nelson Dominguez Leon on 13/09/16.
//  Copyright © 2016 ODIGEO. All rights reserved.
//

import XCTest
@testable import ActionBarManager

class ActionBarObserver: ActionBarDelegate {
    
    var doneButtonPressed: Bool?
    var directionButtonPressed: Direction?
    
    func doneButtonPressed(actionBar: ActionBar, barButtonItem: UIBarButtonItem) {
        doneButtonPressed = true
    }
    
    func directionButtonPressed(actionBar: ActionBar, direction: Direction) {
        directionButtonPressed = direction
    }
}

class ActionBarTests: XCTestCase {
    
    var delegate: ActionBarObserver!
    var actionbar: ActionBar!
    
    override func setUp() {
        super.setUp()
        
        delegate = ActionBarObserver()
        actionbar = ActionBar(delegate: delegate)
    }
    
    override func tearDown() {
        
        delegate = nil
        actionbar = nil
        
        super.tearDown()
    }
    
    func testActionBarPrevious() {
        
        let previous = actionbar.items?.first
        XCTAssertNotNil(previous)
        
        actionbar.previousHandler(sender: previous!)        
        
        XCTAssertNotNil(delegate.directionButtonPressed)
        XCTAssert(delegate.directionButtonPressed! == .previous)
    }
    
    func testActionBarNext() {
        
        let next = actionbar.items?[2]
        XCTAssertNotNil(next)
        
        actionbar.nextHandler(sender: next!)
        
        XCTAssertNotNil(delegate.directionButtonPressed)
        XCTAssert(delegate.directionButtonPressed! == .next)
    }
    
    func testActionBarDone() {
        
        let done = actionbar.items?.last
        XCTAssertNotNil(done)
        
        actionbar.handleActionBarDone(item: done!)
        
        XCTAssertNotNil(delegate.doneButtonPressed)
        XCTAssert(delegate.doneButtonPressed! == true)
    }
}
