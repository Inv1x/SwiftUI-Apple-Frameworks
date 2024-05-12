//
//  FrameworkGridViewModel.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Inv1x on 12.05.2024.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
}
