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
            ZStack {
                AFGradientBackgroundView()
                VStack {
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
                    .padding()
                }
            }
            .navigationTitle("Apple Frameworks").foregroundColor(.white)
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
