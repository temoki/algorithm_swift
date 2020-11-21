extension Array where Element: Comparable {

    public mutating func bubbleSort() {
        for i in stride(from: count, to: 1, by: -1) {
            for j in stride(from: 1, to: i, by: 1) {
                if self[j] < self[j-1] {
                    swapAt(j, j-1)
                }
            }
        }
    }
    
    public func bubbleSorted() -> Self {
        var copied = self
        copied.bubbleSort()
        return copied
    }
    
}
