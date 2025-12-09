//
//  ChildFilterView.swift
//  exercise002
//
//  Created by Panagiotis Vakalis on 9/12/25.
//

import SwiftUI

struct ChildFilterView: View {
    @Binding var selectedFilter: String
    
    var body: some View {
        HStack(spacing: 16.0) {
            Button {
                selectedFilter = "All"
            } label: {
                Text("All")
            }
            Button {
                selectedFilter = "Favourites"
            } label: {
                Text("Favourites")
            }
            Button {
                selectedFilter = "Trending"
            } label: {
                Text("Trending")
            }
        }
    }
}

#Preview {
    @Previewable @State var selectedFilter = ""
    return ChildFilterView(selectedFilter: $selectedFilter)
}
