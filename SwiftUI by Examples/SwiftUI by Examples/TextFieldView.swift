//
//  TextFieldView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 09/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct TextFieldView : View {

    @State var username: String = ""
    @State var password: String = ""

    var body: some View {
        VStack {
            HStack {
                Text("Username")
                TextField($username, placeholder: Text("Username")) {
                    print(self.username)
                    }
                    .textContentType(.name)
            }
            HStack {
                Text("Password")
                SecureField($password, placeholder: Text("Password")) {
                    print(self.password)
                    }
                    .textContentType(.newPassword)
            }
            }
            .textFieldStyle(.roundedBorder)
            .padding()
    }
}

#if DEBUG
struct TextFieldView_Previews : PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
#endif
