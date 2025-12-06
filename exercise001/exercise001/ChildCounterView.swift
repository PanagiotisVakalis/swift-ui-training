//
//  ChildCounterView.swift
//  exercise001
//
//  Created by Panagiotis Vakalis on 6/12/25.
//

import SwiftUI

struct ChildCounterView: View {
    @Binding var count: Int
    
    var body: some View {
        HStack(spacing: 40.0) {
            Button {
                count += 1
            } label: {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
                    .tint(.green)
            }
            Button {
                count -= 1
            } label: {
                Image(systemName: "minus.circle.fill")
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
                    .tint(.red)
            }

        }
    }
}

#Preview {
    @Previewable @State var count: Int = 0
    ChildCounterView(count: $count)
}
