//
//  Extensions.swift
//  Swiftui-examples
//
//  Created by 전수민 on 2023/08/10.
//

import Foundation
import SwiftUI

extension NavigationLink {
    func myButtonStyle() -> some View {
        self.font(.title)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(.gray)
            .cornerRadius(8)
            .padding()
    }
}
