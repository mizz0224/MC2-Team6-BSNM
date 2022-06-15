//
//  PinImage.swift
//  Req
//
//  Created by heojaenyeong on 2022/06/13.
//

import SwiftUI

struct PinImage: View {
    let x : CGFloat
    let y : CGFloat
    var selected : Bool
    var body: some View {
        Image(systemName: "text.bubble.fill")
            .resizable()
            .foregroundColor(selected ? .purple : .gray)
            .frame(width: (selected ? 44 : 32), height: (selected ? 44 : 32))
            .position(x: x, y: y)
    }
}
