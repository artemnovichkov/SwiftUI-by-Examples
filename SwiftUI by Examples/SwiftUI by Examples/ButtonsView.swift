//
//  ButtonsView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 10/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct ButtonsView: View {

    var body: some View {

        VStack(spacing: 16) {
            Button(action: {
                print("tap")
            }, label: {
                Text("Tap")
            })
                .padding()
                .foregroundColor(.white)
                .background(Color.green, cornerRadius: 12)
            NavigationButton(destination: TextFieldView()) {
                Text("Navigation")
            }
                .padding()
                .foregroundColor(.white)
                .background(Color.green, cornerRadius: 12)
            PresentationButton(destination: TextFieldView(), label: {
                Text("Presentation")
            })
                .padding()
                .foregroundColor(.white)
                .background(Color.green, cornerRadius: 12)
            }

    }
}

#if DEBUG
struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
#endif
