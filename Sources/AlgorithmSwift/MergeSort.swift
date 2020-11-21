extension Array where Element: Comparable {

    public mutating func mergeSort() {
        var copied = self
        merge(&self, &copied, 0, count)
    }
    
    public func mergeSorted() -> Self {
        var copied = self
        copied.mergeSort()
        return copied
    }
    
}

private func merge<Element: Comparable>(_ array1: inout Array<Element>, _ array2: inout Array<Element>, _ left: Int, _ right: Int) {
    if left == right || left == right - 1 { return }
    let mid = (left + right) / 2
    merge(&array1, &array2, left, mid)
    merge(&array1, &array2, mid, right)
    merge_sub(&array1, &array2, left, mid, right);
}

private func merge_sub<Element: Comparable>(_ array1: inout Array<Element>, _ array2: inout Array<Element>, _ left: Int, _ mid: Int, _ right: Int) {
    var i = left
    var j = mid
    var k = 0
    while i < mid && j < right {
        if (array1[i] <= array1[j]) {
            array2[k] = array1[i]
            k += 1
            i += 1
        } else {
            array2[k] = array1[j]
            k += 1
            j += 1
        }
    }
    if i == mid {
        while j < right {
            array2[k] = array1[j]
            k += 1
            j += 1
        }
    } else {
        while i < mid {
            array2[k] = array1[i]
            k += 1
            i += 1
        }
    }
    for l in 0 ..< k {
        array1[left + l] = array2[l]
    }
}
