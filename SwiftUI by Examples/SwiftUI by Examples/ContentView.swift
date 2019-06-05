//
//  ContentView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 05/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct Animal {

    let name: String
}

let animals: [Animal] = [.init(name: "🐈"),
                         .init(name: "🐕"),
                         .init(name: "🦖")]

struct ContentView : View {
    var body: some View {
        NavigationView {
            List(animals.identified(by: \.name)) { animal in
                Text(animal.name)
            }
        }
        .navigationBarTitle(Text("Animals"))
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
