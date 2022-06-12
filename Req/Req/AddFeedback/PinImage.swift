//
//  PinImage.swift
//  Req
//
//  Created by 이재웅 on 2022/06/12.
//

import SwiftUI

struct PinImage: View {
    let x: CGFloat
    let y: CGFloat
    
    var body: some View {
        Image(systemName: "text.bubble.fill")
            .resizable()
            .foregroundColor(.gray)
            .frame(width: 32.0, height: 32.0)
            .position(x: x, y: y)
    }
}
