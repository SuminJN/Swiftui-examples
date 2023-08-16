//
//  ContentView.swift
//  Swiftui-examples
//
//  Created by 전수민 on 2023/08/10.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    let columns = [
        GridItem(.flexible()), GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    NavigationLink {
                        Calendar()
                    } label: {
                        Text("Calendar")
                    }
                    .myButtonStyle()
                    
                    NavigationLink {
                        DarkMode()
                    } label: {
                        Text("Dark Mode")
                    }
                    .myButtonStyle()
                    
                    NavigationLink {
                        TabViewEx()
                    } label: {
                        Text("Tab View")
                    }
                    .myButtonStyle()
                }
                .padding()
            }
            .navigationBarTitle("Main", displayMode: .inline)
            .navigationBarItems(leading: Button("왼쪽") { }, trailing: Button("오른쪽") { })
        }
        .environment(\.colorScheme, isDarkMode ? .dark : .light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
