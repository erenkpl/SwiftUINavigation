import SwiftUI

struct Cat: Identifiable, Hashable{
    var id = UUID()
    let name : String
}

let cats : [Cat] = [Cat(name: "Whiskas"), Cat(name: "Sweety"), Cat(name: "Sir")]
