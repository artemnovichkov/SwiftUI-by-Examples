//
//  StepperView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 10/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct StepperView: View {

    @State var value = 0

    var body: some View {
        Stepper(value: $value, step: 1) {
            Text("\(self.value)")
        }
        .padding()
    }
}

#if DEBUG
struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
#endif
