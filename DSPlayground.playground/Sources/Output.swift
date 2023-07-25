import Foundation

public func output<T: CustomStringConvertible>(for t: T, title: String = "") {
    print("---------Output for", title, "-----------")
    print(t.description)
}
