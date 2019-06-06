//
//  DetailsView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 05/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct DetailsView: View {

    let video: Video

    var body: some View {
        Image(video.thumbnail)
            .navigationBarTitle(Text(video.title), displayMode: .inline)
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
