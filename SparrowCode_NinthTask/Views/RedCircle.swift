//
//  RedCircle.swift
//  SparrowCode_NinthTask
//
//  Created by Edmond Podlegaev on 27.12.2023.
//

import SwiftUI

struct RedCircle: View {
    @Binding var cricleOffset: CGSize
    var body: some View {
        ZStack {
            Circle()
                .fill(.black)
                .frame(width: 150)
                .blur(radius: 25)
                .offset(cricleOffset)
                .gesture(DragGesture().onChanged({ gestureData in
                    cricleOffset = gestureData.translation
                }).onEnded({ _ in
                    withAnimation(.spring(duration: 0.5, bounce: 0.5, blendDuration: 0.25)) {
                        cricleOffset = .zero
                    }
                }))
        }
    }
}
