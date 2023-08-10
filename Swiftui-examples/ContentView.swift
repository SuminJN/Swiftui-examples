//
//  ContentView.swift
//  Swiftui-examples
//
//  Created by 전수민 on 2023/08/10.
//

import SwiftUI

struct ContentView: View {
    
    let data = ["AAA", "BBB", "CCC", "DDD", "EEE"]
    
    let columns = [
        GridItem(.flexible()), GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(data, id: \.self) { i in
                        Button {
                            
                        } label: {
                            Text(i)
                        }
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.black)
                        .background(.gray)
                        .cornerRadius(8)
                    }
                }
                .padding()
            }
            .navigationBarTitle("Testing")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
