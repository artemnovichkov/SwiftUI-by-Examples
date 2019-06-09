//
//  ExampleListView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 09/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct ExampleListView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Base elements")) {
                    NavigationButton(destination: TextView()) {
                        ExampleCell(title: "Texts", subtitle: "Showing rish texts")
                    }
                    NavigationButton(destination: TextFieldView()) {
                        ExampleCell(title: "Text fields", subtitle: "Showing text fields")
                    }
                    NavigationButton(destination: ButtonsView()) {
                        ExampleCell(title: "Buttons", subtitle: "Showing buttons")
                    }
                    NavigationButton(destination: SliderView()) {
                        ExampleCell(title: "Slider", subtitle: "Showing slider")
                    }
                }
                Section(header: Text("Others")) {
                    NavigationButton(destination: VideoListView().environmentObject(VideoStore())) {
                        ExampleCell(title: "List", subtitle: "Example of editable list")
                    }
                    NavigationButton(destination: BadgeView()) {
                        ExampleCell(title: "Drawing shapes", subtitle: "Using path for custom shapes")
                    }
                }
                }
                .listStyle(.grouped)
                .navigationBarTitle(Text("SwiftUI by Examples"))
        }
    }
}

#if DEBUG
struct ExampleListView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleListView()
    }
}
#endif
