//
//  DarkMode.swift
//  Swiftui-examples
//
//  Created by 전수민 on 2023/08/11.
//

import SwiftUI

struct DarkMode: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        VStack {
            Button {
                isDarkMode.toggle()
            } label: {
                isDarkMode ? Label("Dark", systemImage: "lightbulb.fill") : Label("Light", systemImage: "lightbulb")
            }
        }
    }
}

struct DarkMode_Previews: PreviewProvider {
    static var previews: some View {
        DarkMode()
    }
}
