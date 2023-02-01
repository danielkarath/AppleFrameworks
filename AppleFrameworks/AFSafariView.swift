//
//  AFSafariView.swift
//  AppleFrameworks
//
//  Created by Daniel Karath on 2/1/23.
//

import Foundation
import SwiftUI
import SafariServices

struct AFSafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {}
    
}
