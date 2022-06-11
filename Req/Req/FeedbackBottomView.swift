//
//  FeedbackBottomView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/11.
//

import SwiftUI

struct FeedbackBottomView: View {
    var body: some View {
        Text("오늘의 패션이 어떤가요?\n패션에 대해서 자유롭게 피드백 해주세요!")
            .multilineTextAlignment(.center)
            .font(.system(size: 14.0))
    }
}

struct FeedbackBottomView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackBottomView()
    }
}
