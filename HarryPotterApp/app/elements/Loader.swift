//
//  Loader.swift
//  HarryPotterApp
//
//  Created by Alexandra Kurganova on 07.05.2023.
//

import SwiftUI

struct Loader: ViewModifier {
    let withLoading: Bool

    func body(content: Content) -> some View {
        if withLoading {
            VStack(alignment: .leading) {
                content
                Divider()
                HStack {
                    Spacer()
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                    Spacer()
                }
            }
        } else {
            content
        }
    }
}
