//
//  FrameworkDetailView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Inv1x on 12.05.2024.
//

import SwiftUI

#Preview {
    FrameworkDetailView(
        framework: MockData.sampleFramework,
        isShowingDetailView: .constant(false)
    )
}

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            XDismissButton(isShowing: $isShowingDetailView)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .padding()
            
            Button {
                isShowingSafariView = true
            } label: {
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.blue)
            
            Spacer()
        }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        }
    }
}
