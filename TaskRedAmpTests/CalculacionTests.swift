//
//  CalculacionTests.swift
//  TaskRedAmpTests
//
//  Created by Christián on 05/03/2024.
//

import XCTest
@testable import TaskRedAmp

final class CalculacionTests: XCTestCase {

    func testCalculationOfProgress() {
        let userPoints = 15
        let progress = MozogQuiz().markByPercentage(userPoints)
        let percantage = "🤩"
        
        
        XCTAssertEqual(progress, percantage)
        
    }
    
    func testColorNotEqual() {
        let ourColor = UIColor.red
        let userAnswer = "Bratislava"
        let correction = MozogQuiz().checkCorrection(userAnswer)
        
        XCTAssertNotEqual(correction, ourColor)
    }
    func testColorEqual() {
        let ourColor = UIColor.green
        let userAnswer = "Bratislava"
        let correction = MozogQuiz().checkCorrection(userAnswer)
        
        XCTAssertEqual(correction, ourColor)
    }

}
