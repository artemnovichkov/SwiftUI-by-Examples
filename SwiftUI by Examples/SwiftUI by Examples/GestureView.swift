//
//  GestureView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 10/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct GestureView: View {

    @State var isDetectingTap = false
    @State var isDetectingDoubleTap = false
    @GestureState var isDetectingLongPress = false
    @State var numberOfTaps = 0

    var body: some View {
        let tap = TapGesture().onEnded {
            self.isDetectingTap.toggle()
        }
        let press = LongPressGesture(minimumDuration: 2)
            .updating($isDetectingLongPress) { currentState, gestureState, _ in
                gestureState = currentState
            }
            .onChanged { _ in
                self.numberOfTaps += 1
        }
        return VStack {
            Text("Tap")
                .font(.largeTitle)
            Circle()
                .fill(isDetectingTap ? Color.red : Color.blue)
                .frame(width: 100, height: 100, alignment: .center)
                .gesture(tap)
            Text("Double tap")
                .font(.largeTitle)
            Circle()
                .fill(isDetectingDoubleTap ? Color.red : Color.blue)
                .frame(width: 100, height: 100, alignment: .center)
                .tapAction(count: 2) {
                    self.isDetectingDoubleTap.toggle()
            }
            Text("Long press count: \(numberOfTaps)")
                .font(.largeTitle)
            Circle()
                .fill(isDetectingLongPress ? Color.yellow : Color.green)
                .frame(width: 100, height: 100, alignment: .center)
                .gesture(press)
        }
    }
}

#if DEBUG
struct GestureView_Previews: PreviewProvider {
    static var previews: some View {
        GestureView()
    }
}
#endif
