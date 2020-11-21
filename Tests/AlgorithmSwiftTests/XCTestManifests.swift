import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BubbleSortTests.allTests),
        testCase(SelectionSortTests.allTests),
        testCase(MergeSortTests.allTests),
        testCase(QuickSortTests.allTests),
        testCase(SortTests.allTests),
    ]
}
#endif
