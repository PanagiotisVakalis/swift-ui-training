//
//  ParentView.swift
//  exercise002
//
//  Created by Panagiotis Vakalis on 9/12/25.
//

import SwiftUI

struct ParentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ParentView()
}
