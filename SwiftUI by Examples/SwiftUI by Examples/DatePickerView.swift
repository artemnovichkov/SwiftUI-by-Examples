//
//  PickerView.swift
//  SwiftUI by Examples
//
//  Created by Artem Novichkov on 10/06/2019.
//  Copyright © 2019 Artem Novichkov. All rights reserved.
//

import SwiftUI

struct DatePickerView: View {

    @State private var date = Date()
    private var formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()

    @State var string = ""
    var body: some View {
        VStack {
            Text("\(formatter.string(from: date))")
            DatePicker($date,
                       minimumDate: Calendar.current.date(byAdding: .year, value: -1, to: date),
                       maximumDate: Date(),
                       displayedComponents: .date)
        }
    }
}

#if DEBUG
struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
#endif
