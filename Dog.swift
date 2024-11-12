import SwiftUI

struct Dog: Identifiable, Hashable{
    var id = UUID()
    let name : String
}

let dogs : [Dog] = [Dog(name: "Barley"), Dog(name: "Lusy"), Dog(name: "Lucky"), Dog(name: "Smoke")]
