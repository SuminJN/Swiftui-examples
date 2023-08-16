//
//  TabView.swift
//  Swiftui-examples
//
//  Created by 전수민 on 2023/08/11.
//

import SwiftUI

struct TabViewEx: View {
    @State private var selection = 0
    
    var body: some View {
        TabView {
            Text("The First Tab")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
        .font(.headline)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewEx()
    }
}
