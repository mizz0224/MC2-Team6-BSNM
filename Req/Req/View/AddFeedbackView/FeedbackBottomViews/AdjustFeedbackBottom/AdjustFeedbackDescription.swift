//
//  AdjustFeedbackDescription.swift
//  Req
//
//  Created by 이재웅 on 2022/06/13.
//

import SwiftUI

struct AdjustFeedbackDescription: View {
    let description: String
    
    var body: some View {
        Text(description)
            .font(.system(size: 14.0))
            .frame(width: 358.0, height: 130.0, alignment: .topLeading)
            //TextEditor와 Text의 텍스트위치 차이를 보정하기 위한 offset
            .offset(x: 5.0, y: 8.0)
    }
}
