//
//  TextView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 09/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct TextView : View {
    var body: some View {
        VStack {
            Text("Simple text")
            Text("Rich text")
                .color(.green)
                .bold()
                .font(.largeTitle)
            Text("Simple text with tap action")
                .underline(true, color: .black)
                .tapAction {
                    print("Tap")
            }
            Text("Multiline text\nwith second line")
                .lineLimit(nil)
        }
    }
}

#if DEBUG
struct TextView_Previews : PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
#endif
