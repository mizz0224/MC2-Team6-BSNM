//
//  PinImage.swift
//  Req
//
//  Created by 이재웅 on 2022/06/12.
//

import SwiftUI

struct PinImage: View {
    
    var body: some View {
        Image(systemName: "text.bubble.fill")
            .resizable()
            .foregroundColor(.cyan)
            .frame(width: 44.0, height: 44.0)
    }
}
