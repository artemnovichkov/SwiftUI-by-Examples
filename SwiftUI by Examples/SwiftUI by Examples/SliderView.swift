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

    private var text: String {
        return "\(celsius, fractionDigits: 1) Celsius is \(celsius * 9 / 5 + 32, fractionDigits: 1) Fahrenheit"
    }

    var body: some View {
        VStack {
            Slider(value: $celsius, from: -100, through: 100, by: 0.1)
            Text(text)
        }
        .padding()
    }
}

extension NumberFormatter {

    static let custom: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 1
        return formatter
    }()
}

extension String.StringInterpolation {

    mutating func appendInterpolation(_ number: Double, fractionDigits: Int) {
        if let result = NumberFormatter.custom.string(for: number) {
            appendLiteral(result)
        }
    }
}

#if DEBUG
struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
#endif
