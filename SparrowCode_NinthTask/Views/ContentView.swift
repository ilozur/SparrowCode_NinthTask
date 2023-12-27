//
//  ContentView.swift
//  SparrowCode_NinthTask
//
//  Created by Edmond Podlegaev on 27.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State var offset: CGSize = .zero
    
    var body: some View {
        ZStack {
            RedCircle(offset: $offset)
            YellowCircle(offset: $offset)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
