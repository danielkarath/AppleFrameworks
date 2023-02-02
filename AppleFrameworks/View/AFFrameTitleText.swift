//
//  AFFrameTitleText.swift
//  AppleFrameworks
//
//  Created by Daniel Karath on 2/2/23.
//

import SwiftUI

struct AFFrameTitleText: View {
    
    var titleText: String
    var textColor: Color
    
    var body: some View {
        Text(titleText)
            .frame(width: UIScreen.main.bounds.width-64, height: 40, alignment: .leading)
            .font(.title)
            .bold()
            .foregroundColor(textColor)
            .padding(.bottom, 8)
    }
}

struct AFFrameTitleText_Previews: PreviewProvider {
    static var previews: some View {
        AFFrameTitleText(titleText: "Sample text", textColor: Color.black)
    }
}
