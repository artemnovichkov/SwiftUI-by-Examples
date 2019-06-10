//
//  AnimationView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 10/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct AnimationView: View {

    @State var angle = 0.0
    @State var scale = false

    var body: some View {
        Button(action: {
            withAnimation(.basic(duration: 0.3, curve: .easeIn)) {
                self.angle += 180
                self.scale.toggle()
            }
        }) {
            Text("Tap here")
                .padding()
                .rotationEffect(.init(degrees: angle))
                .scaleEffect(scale ? 1.5 : 1)
        }
    }
}

#if DEBUG
struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
#endif
