//
//  LoadingRectangle.swift
//  Vought Showcase
//
//  Created by Mehul Jain on 27/08/24.
//

import SwiftUI

struct LoadingRectangle: View {
    var progress: CGFloat

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundStyle(Color.white.opacity(0.3))
                    .cornerRadius(5)
                Rectangle()
                    .frame(width: geometry.size.width * self.progress)
                    .foregroundStyle(Color.white.opacity(1.0))
                    .cornerRadius(5)
            }
        }
    }
}
