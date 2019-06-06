//
//  ListView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 05/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct ListView: View {

    @State var showingAlert = false

    var body: some View {
        NavigationView {
            List(Video.all.identified(by: \.title)) { animal in
                AnimalCell(video: animal)
                }
                .navigationBarTitle(Text("WWDC 2019"))
                .navigationBarItems(trailing:
                    Button(action: {
                        self.showingAlert = true
                    }) {
                        Image(systemName: "info.circle")
                    }
                    .presentation($showingAlert) {
                        Alert(title: Text("WWDC 2019"),
                                message: Text("Tap on video to see detail information"),
                                dismissButton: .default(Text("Got it!")))
                    }
            )
        }
    }
}

struct AnimalCell: View {

    let video: Video

    var body: some View {
        NavigationButton(destination: DetailsView(video: video)) {
            HStack {
                Image(video.thumbnail)
                    .frame(width: 30, height: 30, alignment: .center)
                    .cornerRadius(8)
                VStack(alignment: .leading) {
                    Text(video.title)
                    Text(video.description)
                        .font(.subheadline)
                }
            }
        }
    }
}

#if DEBUG
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
#endif
