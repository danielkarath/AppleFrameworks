//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Daniel Karath on 2/1/23.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .frame(width: UIScreen.main.bounds.width-64, height: (UIScreen.main.bounds.width-64)/6)
            .font(.system(size: 18, weight: .bold, design: .default))
            .foregroundColor(.white)
            .background(.red)
            .cornerRadius(8)
            .padding(.bottom, 16)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Sample title")
    }
}
