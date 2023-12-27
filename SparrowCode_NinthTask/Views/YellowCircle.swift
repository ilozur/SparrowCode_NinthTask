//
//  YellowCircle.swift
//  SparrowCode_NinthTask
//
//  Created by Edmond Podlegaev on 27.12.2023.
//

import SwiftUI

struct YellowCircle: View {
    @Binding var cricleOffset: CGSize
    var body: some View {
        ZStack {
            Circle()
                .fill(.black)
                .frame(width: 150)
                .blur(radius: 25)
                .overlay {
                    Image(systemName: "cloud.sun.rain.fill")
                        .resizable()
                        .padding(25)
//                        .symbolRenderingMode(.hierarchical)
                        .font(.title)
                        .foregroundStyle(.white)
                        .offset(cricleOffset)
                        .allowsHitTesting(false)
                }
                .allowsHitTesting(false)
        }
    }
}
