//
//  SegmentedControlView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 10/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct SegmentedControlView: View {

    @State var index = 0
    var elements = ["Easy", "Normal", "Hard"]

    var body: some View {
        VStack {
            Text(elements[index])
            SegmentedControl(selection: $index) {
                ForEach(0..<elements.count) { index in
                    Text(self.elements[index])
                }
            }
            }
            .padding()
    }
}

#if DEBUG
struct SegmentedControlView_Previews : PreviewProvider {
    static var previews: some View {
        SegmentedControlView()
    }
}
#endif
