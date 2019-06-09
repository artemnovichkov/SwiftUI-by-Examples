//
//  SliderView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 10/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct SliderView: View {

    @State var celsius: Double = 0

    private let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 1
        return formatter
    }()

    var body: some View {
        VStack {
            Slider(value: $celsius, from: -100, through: 100, by: 0.1)
            Text("\(self.formatter.string(for: celsius) ?? "") Celsius is \(self.formatter.string(for: celsius * 9 / 5 + 32) ?? "") Fahrenheit")
        }
        .padding()
    }
}

#if DEBUG
struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
#endif
