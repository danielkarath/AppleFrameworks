//
//  AFFrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Daniel Karath on 2/1/23.
//

import SwiftUI

struct AFFrameworkGridView: View {
    
    @StateObject var viewModel = AFFrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ZStack {
                AFGradientBackgroundView()
                VStack {
                    ScrollView {
                        LazyVGrid(columns: columns) {
                            ForEach(0..<AFMockData.AFFrameworks.count, id: \.self) { index in
                                AFFrameworkTitleView(indexNum: index)
                                    .onTapGesture {
                                        viewModel.selectedFrameworkIndex = index
                                    }
                            }
                        }
                    }
                    .padding()
                }
            }
            //.navigationTitle("🍎 Frameworks").foregroundColor(.white)
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                AFDetailView(indexNum: viewModel.selectedFrameworkIndex, isShowingDetailView: $viewModel.isShowingDetailView)
                    //AFMockData.AFFrameworks[viewModel.selectedFrameworkIndex].name
            }
        }
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
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.65)
        }
    }
}

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

struct AFTitleLabel: View {
    var body: some View {
        Text("🍎 Frameworks")
            .frame(width: UIScreen.main.bounds.width-90, height: 20, alignment: .leading)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .scaledToFit()
            .minimumScaleFactor(0.80)
            .padding(.top, 16)
            .padding(.bottom, 8)
    }
}
