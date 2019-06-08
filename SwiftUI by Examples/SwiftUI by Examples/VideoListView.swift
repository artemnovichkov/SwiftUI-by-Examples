//
//  ListView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 05/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI
import Combine

struct VideoListView: View {

    @State var showFavoritesOnly = false

    @EnvironmentObject private var store: VideoStore

    var body: some View {
        NavigationView {
            List {
                Section {
                    Toggle(isOn: $showFavoritesOnly) {
                        Text("Favorites only")
                    }
                    Button(action: addRandomVideo) {
                        Text("Add random video")
                    }
                }
                Section {
                    ForEach(store.videos) { video in
                        if !self.showFavoritesOnly || video.isFavorite {
                            VideoCell(video: video)
                        }
                        }
                        .onDelete(perform: delete)
                }
                }
                .navigationBarTitle(Text("WWDC 2019"))
                .navigationBarItems(leading: PresentationButton(Image(systemName: "info"), destination: BadgeView()), trailing: EditButton())
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

#if DEBUG
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
#endif
