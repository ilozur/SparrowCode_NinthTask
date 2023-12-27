//
//  YellowCircle.swift
//  SparrowCode_NinthTask
//
//  Created by Edmond Podlegaev on 27.12.2023.
//

import SwiftUI

struct YellowCircle: View {
    @Binding var offset: CGSize
    var body: some View {
        ZStack {
            Circle()
                .fill(.yellow)
            .frame(width: 100)
            .offset(offset)
            .gesture(DragGesture().onChanged({ gestureData in
                offset = gestureData.translation
            }).onEnded({ _ in
                withAnimation(.spring(duration: 0.5, bounce: 0.5, blendDuration: 0.25)) {
                    offset = .zero
                }
            }))
            Image(systemName: "cloud.sun.rain.fill")
                .foregroundStyle(.white)
                .font(.title)
                .offset(offset)
        }
    }
}
