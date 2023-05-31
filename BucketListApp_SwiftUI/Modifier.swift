//
//  Modifier.swift
//  BucketListApp_SwiftUI
//
//  Created by aaa on 31/05/2023.
//

import SwiftUI

struct FrameFromSize: ViewModifier {
    let size: CGSize
    func body(content: Content) -> some View {
        content
            .frame(width: size.width, height: size.height)
    }
}
extension View{
    func frame(_ size: CGSize) -> some View {
        self.modifier(FrameFromSize(size: size))
    }
}
// examples use RoundedRectangle(cornerRadius: 4).modifier(FrameFromSize(size: size))
