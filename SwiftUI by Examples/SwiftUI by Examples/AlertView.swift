//
//  AlertView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 10/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct AlertView: View {

    @State var showAlert = false
    @State var showSheet = false

    private var alert: Alert {
        Alert(title: "Title",
              message: "Message",
              primaryButton: .destructive(Text("Cancel")),
              secondaryButton: .default(Text("Done")))
    }

    private var sheet: ActionSheet {
        ActionSheet(title: "Title", message: "Message", buttons: [.default(Text("Option 1"), onTrigger: {
            self.showSheet = false
        }),
                                                                  .default(Text("Option 2")),
                                                                  .cancel()])
    }

    var body: some View {
        VStack {
            Button(action: {
                self.showAlert = true
            }) {
                Text("Show alert")
                }
                .presentation($showAlert) {
                    alert
            }
            Button(action: {
                self.showSheet = true
            }) {
                Text("Show action sheet")
                }
                .presentation(showSheet ? sheet : nil)
        }
    }
}

extension ActionSheet {

    init(title: String, message: String, buttons: [ActionSheet.Button] = [.cancel()]) {
        self.init(title: Text(title), message: Text(message), buttons: buttons)
    }
}


extension Alert {

    init(title: String, message: String, primaryButton: Alert.Button, secondaryButton: Alert.Button) {
        self.init(title: Text(title), message: Text(message), primaryButton: primaryButton, secondaryButton: secondaryButton)
    }
}

#if DEBUG
struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
#endif
