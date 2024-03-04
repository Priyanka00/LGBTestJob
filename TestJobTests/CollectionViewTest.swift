//
//  CollectionViewTest.swift
//  TestJobTests
//
//  Created by Priyanka Sinha on 04/03/24.
//

import XCTest
@testable import TestJob

class CollectionViewTest: XCTestCase {

    var collectionViewCell: CollectionViewCell?

        override func setUp() {
            super.setUp()
            collectionViewCell = CollectionViewCell()
        }
        
        override func tearDown() {
            super.tearDown()
        }
        
        func testViewCell() {
            XCTAssertNotNil(collectionViewCell)
            XCTAssertNil(collectionViewCell?.imageView1)
        }

}
