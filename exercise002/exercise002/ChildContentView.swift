//
//  ChildContentView.swift
//  exercise002
//
//  Created by Panagiotis Vakalis on 9/12/25.
//

import SwiftUI

struct ChildContentView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        Text(viewModel.selectedItem ?? "")
    }
}

#Preview {
    let viewModel = ViewModel()
    viewModel.selectedItem = "selected item"
    return ChildContentView(viewModel: viewModel)
}
