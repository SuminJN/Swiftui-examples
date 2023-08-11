//
//  Calendar.swift
//  Swiftui-examples
//
//  Created by 전수민 on 2023/08/10.
//

import SwiftUI

struct Calendar: View {
    @State var selectedDate: Date = Date()
    
    var body: some View {
        VStack() {
            Text(selectedDate.formatted(date: .abbreviated, time: .omitted))
                .font(.system(size: 28))
                .bold()
                .foregroundColor(Color.accentColor)
                .padding()
                .animation(.spring(), value: selectedDate)
                .frame(width: 500)
            
            Divider()
            
            DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date])
                .padding(.horizontal)
                .datePickerStyle(.graphical)
            
            Divider()
            
            Spacer()
        }
        .padding(.vertical, 100)
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        Calendar()
    }
}
