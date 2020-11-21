import XCTest
@testable import AlgorithmSwift

final class BubbleSortTests: XCTestCase {
    
    func test_empty() {
        let target: [Int] = []
        let expected = target.sorted()
        let result = target.bubbleSorted()
        XCTAssertEqual(expected, result)
    }
    
    func test_1_element() {
        let target: [Int] = [1]
        let expected = target.sorted()
        let result = target.bubbleSorted()
        XCTAssertEqual(expected, result)
    }

    func test_random_elements() {
        for _ in 0..<100 {
            let target = (1...100).map { _ in Int.random(in: 1...100) }
            let expected = target.sorted()
            let result = target.bubbleSorted()
            XCTAssertEqual(expected, result)
        }
    }
    
    func test_measure() {
        let N = 1000
        measureMetrics([.wallClockTime], automaticallyStartMeasuring: false) {
            var target = (0..<N).map { _ in Int.random(in: 1...N) }
            startMeasuring()
            target.bubbleSort()
            stopMeasuring()
        }
    }

    static var allTests = [
        ("test_empty", test_empty),
        ("test_1_element", test_1_element),
        ("test_random_elements", test_random_elements),
        ("test_measure", test_measure),
    ]
}
