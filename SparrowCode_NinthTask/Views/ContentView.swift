//
//  ContentView.swift
//  SparrowCode_NinthTask
//
//  Created by Edmond Podlegaev on 27.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State var cricleOffset: CGSize = .zero
    
    var body: some View {
        ZStack {
            RedCircle(cricleOffset: $cricleOffset)
            YellowCircle(cricleOffset: $cricleOffset)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay {
            Color(white: 0.5)
                .blendMode(.colorBurn)
                .allowsHitTesting(false)
            
            Color(white: 1)
                .blendMode(.colorDodge)
                .allowsHitTesting(false)
            
            RadialGradient(colors: [.yellow, .red], center: .center, startRadius: 150 / 2, endRadius: 175)
                .blendMode(.lighten)
                .allowsHitTesting(false)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
