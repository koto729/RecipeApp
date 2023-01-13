//
//  RecipeAppUITests.swift
//  RecipeAppUITests
//
//  Created by KoWingTo on 8/1/2023.
//

import XCTest
import SwiftUI

final class RecipeAppUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments = ["testing"]
        app.launch()
    }

    func testTabBarLabel() throws{
        let sut = HomeView()
        let a = sut.contacts
        XCTAssertTrue(a.exists, "Label does not exist")
        //XCTAssertEqual(label.label, "Find", "Label text does not match expected value")
    }
}
