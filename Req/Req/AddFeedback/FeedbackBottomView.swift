//
//  FeedbackBottomView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/11.
//

import SwiftUI

struct FeedbackBottomView: View {
    @Binding var changeFeedbackBottomView: FeedbackType
    @Binding var title: String
    @Binding var description: String
    @Binding var currentPin: Pin
    
    var body: some View {
        switch changeFeedbackBottomView {
        case .addFeedback:
            BeforeAddFeedbackBottomView(changeFeedbackBottomView: $changeFeedbackBottomView)
        case .touchPin:
            AfterAddFeedbackBottomView()
        case .beforeAdjustFeedback:
            //TODO: BeforeAdjustFeedbackBottomView 구현
            AdjustFeedbackBottomView(currentPin: $currentPin)
        default:
            EditFeedbackBottomView(title: $title, description: $description)
        }
    }
}
