//
//  FrameworkGridView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Inv1x on 12.05.2024.
//

import SwiftUI

#Preview {
    FrameworkGridView()
}

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Apple frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(
                    framework: viewModel.selectedFramework!,
                    isShowingDetailView: $viewModel.isShowingDetailView
                )
            }
        }
    }
}
