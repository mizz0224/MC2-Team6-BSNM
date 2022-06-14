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
    @State var selected : Bool = false
    var body: some View {
        if(!selected) {
            Image(systemName: "text.bubble.fill")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 32.0, height: 32.0)
                .position(x: x, y: y)
                .onTapGesture {
                    $selected = true
                }
                
        } else {
            Image(systemName: "text.bubble.fill")
                .resizable()
                .foregroundColor(.red)
                .frame(width: 32.0, height: 32.0)
                .position(x: x, y: y)
        }
    }
}
