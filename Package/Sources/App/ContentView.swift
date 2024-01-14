//
//  ContentView.swift
//
//
//  Created by yoshi on 2024/01/14.
//

import SwiftUI

public struct ContentView: View {
    public var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }

    public init() {}
}

#Preview {
    ContentView()
}
