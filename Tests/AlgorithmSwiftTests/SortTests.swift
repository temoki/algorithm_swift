import XCTest

final class SortTests: XCTestCase {
    
    func test_measure() {
        let N = 1000
        measureMetrics([.wallClockTime], automaticallyStartMeasuring: false) {
            var target = (0..<N).map { _ in Int.random(in: 1...N) }
            startMeasuring()
            target.sort()
            stopMeasuring()
        }
        
    }

    static var allTests = [
        ("test_measure", test_measure),
    ]
}
