//
//  BeforeAddFeedbackText.swift
//  Req
//
//  Created by 이재웅 on 2022/06/12.
//

import SwiftUI

struct BeforeAddFeedbackText: View {
    var body: some View {
        Text("오늘의 패션이 어떤가요?\n패션에 대해서 자유롭게 피드백 해주세요!")
            .multilineTextAlignment(.center)
            .font(.system(size: 14.0))
            .frame(height: 38.0)
    }
}

struct BeforeAddFeedbackText_Previews: PreviewProvider {
    static var previews: some View {
        BeforeAddFeedbackText()
    }
}
