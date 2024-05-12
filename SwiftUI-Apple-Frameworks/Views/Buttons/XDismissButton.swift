//
//  XDismissButton.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Inv1x on 12.05.2024.
//

import SwiftUI

#Preview {
    XDismissButton(isShowing: .constant(true))
}

struct XDismissButton: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowing = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .frame(width: 40, height: 40)
            }
        }.padding()
    }
}
