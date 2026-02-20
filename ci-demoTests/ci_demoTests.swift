//
//  ci_demoTests.swift
//  ci-demoTests
//
//  Created by Pushkar Deshmukh on 20/02/26.
//

import XCTest
@testable import ci_demo

final class ci_demoTests: XCTestCase {

    func test_add_returnsCorrectSum_forVariousInputs() {
        // Arrange
        let testCases = [
            (a: 10, b: 10, expected: 20),
            (a: -5, b: 5, expected: 0),
            (a: -3, b: -7, expected: -10),
            (a: 0, b: 8, expected: 8)
        ]

        for testCase in testCases {
            // Act
            let result = ci_demo.add(a: testCase.a, b: testCase.b)

            // Assert
            XCTAssertEqual(result, testCase.expected,
                           "Expected \(testCase.a) + \(testCase.b) to equal \(testCase.expected)")
        }
    }
}
