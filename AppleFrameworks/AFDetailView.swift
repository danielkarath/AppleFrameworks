//
//  AFDetailView.swift
//  AppleFrameworks
//
//  Created by Daniel Karath on 2/1/23.
//

import SwiftUI

struct AFDetailView: View {
    
    var indexNum: Int
    
    var body: some View {
        ZStack {
            AFGradientBackgroundView()
            VStack(alignment: .center, spacing: 16) {
                HStack(alignment: .center) {
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    }
                    .padding(.top, -60)
                }
                .padding(.leading, UIScreen.main.bounds.width - 60)
                AFFrameworkTitleView(indexNum: indexNum)
                Text(AFMockData.AFFrameworks[indexNum].description)
                    .font(.body)
                    .minimumScaleFactor(0.70)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                Button {
                    print("nyihahaha")
                } label: {
                    AFButton(title: "Learn more")
                }
            }
            .padding(.top, 64)
        }
    }
}

struct AFDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AFDetailView(indexNum: 0)
    }
}
