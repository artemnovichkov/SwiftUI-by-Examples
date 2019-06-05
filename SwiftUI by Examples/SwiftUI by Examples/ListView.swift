//
//  ListView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 05/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct ListView: View {

    var body: some View {
        NavigationView {
            List(Animal.all.identified(by: \.name)) { animal in
                NavigationButton(destination: DetailsView(animal: animal)) {
                    Text(animal.name)
                }
            }
        }
        .navigationBarTitle(Text("Animals"))
        .foregroundColor(.red)
    }
}

#if DEBUG
struct ListView_Previews : PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
#endif
