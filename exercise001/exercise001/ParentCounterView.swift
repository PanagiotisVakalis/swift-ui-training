//
//  ParentCounterView.swift
//  exercise001
//
//  Created by Panagiotis Vakalis on 6/12/25.
//

import SwiftUI

struct ParentCounterView: View {
    @State private var count = 0
    
    var body: some View {
        VStack(spacing: 40.0) {
            Text("\(count)")
                .font(.largeTitle)
            
            if count < 5 {
                ChildCounterView(count: $count)
            } else {
                Text("Limit reached")
            }
        }
    }
}

#Preview {
    ParentCounterView()
}
