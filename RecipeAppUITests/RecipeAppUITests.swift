//
//  RecipeAppUITests.swift
//  RecipeAppUITests
//
//  Created by KoWingTo on 8/1/2023.
//

import XCTest
import SwiftUI

final class RecipeAppUITests: XCTestCase {

    func testHomeView() throws {
        let app = XCUIApplication()
        app.launch()
     
        let Home = app.staticTexts.element
     
        XCTAssert(Home.exists)
        XCTAssertEqual(Home., "Welcome!")
    }
}
