//
//  AFGradientBackgroundView.swift
//  AppleFrameworks
//
//  Created by Daniel Karath on 2/1/23.
//

import SwiftUI

struct AFGradientBackgroundView: View {
    let mygrey: Color = Color(red: 60/255, green: 60/255, blue: 60/220)
    let myDarkGrey: Color = Color(red: 14/255, green: 14/255, blue: 14/220)
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [mygrey, myDarkGrey]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct AFGradientBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        AFGradientBackgroundView()
    }
}
