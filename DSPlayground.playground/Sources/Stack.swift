import Foundation

//Generic Stack
open class Stack<Item> {
    public init(){
        
    }
    var arr = [Item]()
    
    var last: Item? {
        return arr.last
    }
    
    public func push(item: Item){
        arr.append(item)
    }
    
    public func pop(){
        arr.removeLast()
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        return String(describing: arr)
    }
}
