//
//  YellowCircle.swift
//  SparrowCode_NinthTask
//
//  Created by Edmond Podlegaev on 27.12.2023.
//

import SwiftUI

struct YellowCircle: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(.yellow)
            .frame(width: 100)
            Image(systemName: "cloud.sun.rain.fill")
                .foregroundStyle(.white)
                .font(.title)
        }
    }
}

#Preview {
    YellowCircle()
}
