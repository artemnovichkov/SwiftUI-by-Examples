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
                Section(header: Text("Controls")) {
                    NavigationButton(destination: TextView()) {
                        ExampleCell(title: "Texts", subtitle: "A view that displays one or more lines of read-only text.")
                    }
                    NavigationButton(destination: TextFieldView()) {
                        ExampleCell(title: "Text fields", subtitle: "A control that displays an editable text interface.")
                    }
                    NavigationButton(destination: ButtonsView()) {
                        ExampleCell(title: "Buttons", subtitle: "A control that performs an action when triggered.")
                    }
                }
                Section(header: Text("Value selectors")) {
                    NavigationButton(destination: ToggleView()) {
                        ExampleCell(title: "Toggle", subtitle: "A control that toggles between on and off states.")
                    }
                    NavigationButton(destination: DatePickerView()) {
                        ExampleCell(title: "DatePicker", subtitle: "A control for selecting an absolute date.")
                    }
                    NavigationButton(destination: SliderView()) {
                        ExampleCell(title: "Slider", subtitle: "A control for selecting a value from a bounded linear range of values.")
                    }
                    NavigationButton(destination: StepperView()) {
                        ExampleCell(title: "Stepper", subtitle: "A control used to perform semantic increment and decrement actions.")
                    }
                    NavigationButton(destination: SegmentedControlView()) {
                        ExampleCell(title: "Segmented Control", subtitle: "A control for selecting from a set of options.")
                    }
                }
                Section(header: Text("Others")) {
                    NavigationButton(destination: AlertView()) {
                        ExampleCell(title: "Alert", subtitle: "A container for an alert presentation.")
                    }
                    NavigationButton(destination: GestureView()) {
                        ExampleCell(title: "Gestures", subtitle: "Use gesture modifiers to add interactivity to your app.")
                    }
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
