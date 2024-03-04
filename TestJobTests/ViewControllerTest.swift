//
//  ViewControllerTest.swift
//  TestJobTests
//
//  Created by Priyanka Sinha on 04/03/24.
//

import XCTest
@testable import TestJob

class ViewControllerTest: XCTestCase {

    var viewController: ViewController?
    var viewControllerModel = ViewControllerModel()
       
       override func setUp() {
           super.setUp()
           viewController = ViewController()
           
       }
       
       override func tearDown() {
        viewController = nil
           super.tearDown()
       }
       
       func testViewController() {
           XCTAssertNotNil(viewController)
           
       }
       
}
