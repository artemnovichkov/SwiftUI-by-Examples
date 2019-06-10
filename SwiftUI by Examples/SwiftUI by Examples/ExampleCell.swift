//
//  ExampleCell.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 09/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct ExampleCell : View {

    let title: String
    let subtitle: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            Text(subtitle)
                .font(.subheadline)
        }
    }
}

#if DEBUG
struct ExampleCell_Previews : PreviewProvider {
    static var previews: some View {
        ExampleCell(title: "Title", subtitle: "Subtitle")
    }
}
#endif
