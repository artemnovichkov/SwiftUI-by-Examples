//
//  Animal.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 05/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

struct Animal {

    let name: String

    static let all: [Animal] = [.init(name: "🐈"),
                                .init(name: "🐕"),
                                .init(name: "🦖")]
}
