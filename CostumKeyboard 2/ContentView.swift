//
//  ContentView.swift
//  CostumKeyboard 2
//
//  Created by Sardorbek Saydamatov on 04/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @FocusState private var isActive: Bool
    var body: some View {
        NavigationStack {
            CustomTextFieldWithKeyboard {
                TextField("App Pin Code", text: $text)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 15)
                    .frame(width: 150)
                    .background(.fill, in: .rect(cornerRadius: 12))
                    .focused($isActive)
            } keyboard: {
                CustomKeyboardView(text: $text, isActive: $isActive)
            }
        }
    }
}

#Preview {
    ContentView()
}
