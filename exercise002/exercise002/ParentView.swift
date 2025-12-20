//
//  ParentView.swift
//  exercise002
//
//  Created by Panagiotis Vakalis on 9/12/25.
//

import SwiftUI

struct ParentView: View {
    @StateObject var viewModel = ViewModel()
    @State var isExpanded = true
    
    var body: some View {
        VStack {
            Toggle(isExpanded ? "Collapse" : "Expand", isOn: $isExpanded)
            ChildFiltersView(selectedFilter: $viewModel.selectedItem)
            ChildContentView(viewModel: viewModel)
        }
        .padding()
    }
}

#Preview {
    ParentView()
}
