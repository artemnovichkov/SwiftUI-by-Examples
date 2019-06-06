//
//  ListView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 05/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI
import Combine

struct ListView: View {

    @State var showingAlert = false

    @ObjectBinding var store: VideoStore = .init()

    var body: some View {
        NavigationView {
            List {
                Section {
                    Button(action: addRandomVideo) {
                        Text("Add random video")
                    }
                }
                Section {
                    ForEach(store.videos) { video in
                        VideoCell(video: video)
                        }
                        .onDelete(perform: delete)
                }
                }
                .navigationBarTitle(Text("WWDC 2019"))
                .navigationBarItems(trailing: EditButton())
                .listStyle(.grouped)
        }
    }

    func addRandomVideo() {
        if let video = store.videos.randomElement() {
            store.videos.append(video)
        }
    }

    func delete(at offsets: IndexSet) {
        for offset in offsets {
            store.videos.remove(at: offset)
        }
    }
}

struct VideoCell: View {

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
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
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
