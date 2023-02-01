//
//  AFFrameworkTitleView.swift
//  AppleFrameworks
//
//  Created by Daniel Karath on 2/1/23.
//

import SwiftUI

struct AFFrameworkTitleView: View {
    let indexNum: Int
    var body: some View {
        VStack {
            Image(AFMockData.AFFrameworks[indexNum].imageName) //app-clip  AFMockData.AFFrameworks[1].name
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: (UIScreen.main.bounds.width-150)/3, height: (UIScreen.main.bounds.width-150)/3)
            Text(AFMockData.AFFrameworks[indexNum].name)
                .frame(width: (UIScreen.main.bounds.width-150)/3, height: 30)
                .font(.body)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.65)
        }
    }
}
