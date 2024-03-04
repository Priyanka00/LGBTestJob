//
//  TestJobTest.swift
//  TestJobTests
//
//  Created by Priyanka Sinha on 25/01/24.
//

import XCTest
@testable import TestJob

class TestJobTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCollectionViewModel() throws {
     
        let viewControllerModel = ViewControllerModel()
        XCTAssertNotNil(viewControllerModel,"view model should not be nil")
        let viewModelObject = DisplayImageViewModel(controllerModel: viewControllerModel)
        XCTAssertNotNil(viewModelObject,"view model should not be nil")
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    

}
