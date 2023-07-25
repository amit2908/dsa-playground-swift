import Foundation

public func reverseArray<T>(array: [T]) -> [T] {
    var reversed = [T]()
    for index in 0..<array.count {
        reversed.append(array[array.count - 1 - index])
    }
    return reversed
}
