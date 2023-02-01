//
//  AFXDismissButton.swift
//  AppleFrameworks
//
//  Created by Daniel Karath on 2/1/23.
//

import SwiftUI

struct AFXDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack(alignment: .center) {
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
            .padding(.top, -60)
        }
    }
}

struct AFXDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        AFXDismissButton(isShowingDetailView: .constant(false))
    }
}
