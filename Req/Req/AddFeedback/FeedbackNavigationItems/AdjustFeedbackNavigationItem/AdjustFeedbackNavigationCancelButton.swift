//
//  AdjustFeedbackNavigationButton.swift
//  Req
//
//  Created by 이재웅 on 2022/06/14.
//

import SwiftUI

struct AdjustFeedbackNavigationCancelButton: View {
    @Binding var changeFeedbackBottomView: FeedbackType
    
    var body: some View {
        Button {
            changeFeedbackBottomView = .addFeedback
        } label: {
            Text("취소")
                .font(.system(size: 18.0, weight: .semibold))
                .foregroundColor(.black)
        }
    }
}
