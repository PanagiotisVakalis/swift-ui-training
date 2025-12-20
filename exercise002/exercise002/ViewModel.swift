//
//  ViewModel.swift
//  exercise002
//
//  Created by Panagiotis Vakalis on 9/12/25.
//

import Foundation
import Combine

final class ViewModel: ObservableObject {
    @MainActor @Published var items: [String] = []
    @Published var selectedItem: String = ""
    
    func loadItems() async {
        try? await Task.sleep(for: .seconds(2))
        await MainActor.run {
            self.items = ["Item 1", "Item 2", "Item 3"]
        }
    }
    
    func selectItem(at index: Int) {
        selectedItem = items[index]
    }
}
