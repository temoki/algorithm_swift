extension Array where Element: Comparable {

    public mutating func selectionSort() {
        var min = 0
        for i in stride(from: 0, to: count-1, by: 1) {
            min = i
            for j in stride(from: i+1, to: count, by: 1) {
                if self[j] < self[min] {
                    min = j
                }
            }
            swapAt(i, min)
        }
    }
    
    public func selectionSorted() -> Self {
        var copied = self
        copied.selectionSort()
        return copied
    }
    
}
