//
//  ToggleView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 10/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct ToggleView: View {

    @State var isEnabled = false

    var body: some View {
        Toggle(isOn: $isEnabled) {
            Text(isEnabled ? "is On" : "is Off")
            }
            .padding()
    }
}

#if DEBUG
struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
#endif
