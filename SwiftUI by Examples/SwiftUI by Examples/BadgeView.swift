//
//  BadgeView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 08/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct BadgeView: View {

    private static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    private static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
    private static let gradient = LinearGradient(gradient: .init(colors: [gradientStart, gradientEnd]),
                                                 startPoint: .init(x: 0.5, y: 0),
                                                 endPoint: .init(x: 0.5, y: 0.6)
    )

    var body: some View {
        GeometryReader { geometry in
            Path { path in
                var width: CGFloat = min(geometry.size.width, geometry.size.height)
                let height = width
                let xScale: CGFloat = 0.832
                let xOffset = (width * (1.0 - xScale)) / 2.0
                width *= xScale
                path.move(to: .init(x: xOffset + width * 0.95,
                                    y: height * (0.20 + HexagonParameters.adjustment)))

                HexagonParameters.points.forEach {
                    path.addLine(to: .init(x: xOffset + width * $0.useWidth.0 * $0.xFactors.0,
                                           y: height * $0.useHeight.0 * $0.yFactors.0))

                    path.addQuadCurve(to: .init(x: xOffset + width * $0.useWidth.1 * $0.xFactors.1,
                                                y: height * $0.useHeight.1 * $0.yFactors.1),
                                      control: .init(x: xOffset + width * $0.useWidth.2 * $0.xFactors.2,
                                                     y: height * $0.useHeight.2 * $0.yFactors.2))
                }
                }
                .fill(Self.gradient)
                .aspectRatio(1, contentMode: .fit)
        }
    }
}

#if DEBUG
struct BadgeView_Previews : PreviewProvider {
    static var previews: some View {
        BadgeView()
    }
}
#endif
