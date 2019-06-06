//
//  DetailsView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 05/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct DetailsView: View {

    @State private var zoomed = false

    let video: Video

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
            Text("Overview")
                .font(.title)
            Text(video.description)
                .lineLimit(0)
        }
    }
}

#if DEBUG
struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailsView(video: Video.all[0])
        }
    }
}
#endif
