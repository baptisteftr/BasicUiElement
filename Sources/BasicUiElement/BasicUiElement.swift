// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(iOS 13.0, *)
extension View {
    @available(iOS 15.0, *)
    func roundedCard(color: Color?, radius: Double?) -> some View {
        self.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: radius != nil ? radius! : 25.0)
                    .foregroundStyle(color != nil ? color! : Color(uiColor: .secondarySystemBackground))
            )
    }
}
