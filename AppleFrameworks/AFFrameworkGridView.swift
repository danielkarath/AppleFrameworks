//
//  AFFrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Daniel Karath on 2/1/23.
//

import SwiftUI

struct AFFrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0..<AFMockData.AFFrameworks.count, id: \.self) { index in
                    AFFrameworkTitleView(indexNum: index)
                }
            }
        }
        .padding()
    }
}

struct AFFrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        AFFrameworkGridView()
    }
}

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
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.65)
        }
    }
}
