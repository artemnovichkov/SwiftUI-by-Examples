//
//  ListView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 05/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI
import Combine

struct VideoCell: View {

    let video: Video

    var body: some View {
        NavigationButton(destination: VideoDetailsView(video: video)) {
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
                if video.isFavorite {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
            }
        }
    }
}

#if DEBUG
struct VideoCell_Previews: PreviewProvider {
    static var previews: some View {
        let store = VideoStore()
        return Group {
            VideoCell(video: store.videos[0])
            VideoCell(video: store.videos[1])
        }
    }
}
#endif
