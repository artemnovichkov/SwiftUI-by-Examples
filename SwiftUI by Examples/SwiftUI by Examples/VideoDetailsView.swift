//
//  DetailsView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 05/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct VideoDetailsView: View {

    @EnvironmentObject private var store: VideoStore
    @State private var zoomed = false

    var video: Video

    var index: Int {
        return store.videos.firstIndex { $0.id == video.id }!
    }

    var body: some View {
        VStack {
            Image(video.thumbnail)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .tapAction {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
                .navigationBarTitle(Text(video.title), displayMode: .inline)
            HStack {
                Text("Overview")
                    .font(.title)
                Button(action: {
                    self.store.videos[self.index].isFavorite.toggle()
                }) {
                    if self.store.videos[index].isFavorite {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                    else {
                        Image(systemName: "star")
                            .foregroundColor(.gray)
                    }
                }
            }
            Text(video.description)
                .lineLimit(0)
        }
    }
}

#if DEBUG
struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let store = VideoStore()
        return NavigationView {
            VideoDetailsView(video: Video.all[0])
                .environmentObject(store)
        }
    }
}
#endif
