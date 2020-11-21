extension Array where Element: Comparable {

    public mutating func quickSort() {
        quickSortSub(0, count-1)
    }
    
    public func quickSorted() -> Self {
        var copied = self
        copied.quickSort()
        return copied
    }
    
    private mutating func quickSortSub(_ i: Int, _ j: Int) {
        if i == j {
            return
        }
        
        let p = pivot(i, j)
        if p >= 0 {
            let k = partition(i, j, self[p])
            quickSortSub(i, k-1)
            quickSortSub(k, j)
        }
    }
    
    private mutating func partition(_ i: Int, _ j: Int, _ x: Element) -> Int {
        var l = i
        var r = j

        while l <= r {
            while l <= j && self[l] < x {
                l += 1
            }
            while r >= i && self[r] >= x {
                r -= 1
            }

            if l > r {
                break
            }
            
            swapAt(l, r)
            l += 1
            r -= 1
        }
        return l
      }

    private func pivot(_ i: Int, _ j: Int) -> Int {
        var k = i + 1
        while k <= j && self[i] == self[k] {
            k += 1
        }
        if k > j {
            return -1
        }
        if self[i] >= self[k] {
            return i
        }
        return k
    }
    
}
