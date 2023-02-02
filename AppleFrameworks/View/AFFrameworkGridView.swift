//
//  AFFrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Daniel Karath on 2/1/23.
//

import SwiftUI

struct AFFrameworkGridView: View {
    
    @StateObject var viewModel = AFFrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            TabView {
                ZStack {
                    AFGradientBackgroundView()
                    VStack {
                        AFFrameTitleText(titleText: "Quiz", textColor: Color.white)
                        ScrollView {

                        }
                        .padding(.bottom, 10)
                    }
                }
                .tabItem {
                    Image(systemName: "list.bullet.clipboard.fill")
                    Text("Quiz")
                }
                
                ZStack {
                    AFGradientBackgroundView()
                    VStack {
                        AFFrameTitleText(titleText: "Apple Frameworks", textColor: Color.white)
                        ScrollView {
                            LazyVGrid(columns: viewModel.columns) {
                                ForEach(0..<AFMockData.AFFrameworks.count, id: \.self) { index in
                                    AFFrameworkTitleView(indexNum: index)
                                        .onTapGesture {
                                            viewModel.selectedFrameworkIndex = index
                                        }
                                }
                            }
                        }
                        .padding(.bottom, 10)
                    }
                }
                //.navigationTitle("Apple Frameworks").foregroundColor(.white)
                .fullScreenCover(isPresented: $viewModel.isShowingDetailView) {
                    AFDetailView(indexNum: viewModel.selectedFrameworkIndex, isShowingDetailView: $viewModel.isShowingDetailView)
                    //AFMockData.AFFrameworks[viewModel.selectedFrameworkIndex].name
                }
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Library")
                }
            }
            .accentColor(.white)
            
        }
        .preferredColorScheme(.dark)
    }
}

struct AFFrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        AFFrameworkGridView()
    }
}
