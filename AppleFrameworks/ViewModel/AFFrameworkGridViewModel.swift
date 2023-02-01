//
//  AFFrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Daniel Karath on 2/1/23.
//

import Foundation
import SwiftUI

final class AFFrameworkGridViewModel: ObservableObject {
    
    var selectedFrameworkIndex: Int = 0 {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView: Bool = false
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
}
