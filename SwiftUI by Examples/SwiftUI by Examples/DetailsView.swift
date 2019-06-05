//
//  DetailsView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 05/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct DetailsView: View {

    let animal: Animal

    var body: some View {
        Text(animal.name)
    }
}

#if DEBUG
struct DetailsView_Previews : PreviewProvider {
    static var previews: some View {
        DetailsView(animal: .init(name: "🦘"))
    }
}
#endif
