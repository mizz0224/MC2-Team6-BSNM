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
    
    var body: some View {
        switch changeFeedbackBottomView {
        case .addFeedback:
            BeforeAddFeedbackBottomView(changeFeedbackBottomView: $changeFeedbackBottomView)
        case .touchPin:
            AfterAddFeedbackBottomView()
        case .writeFeedback:
            EditFeedbackBottomView(title: $title, description: $description)
        case .adjustFeedback:
            Text("BeforeAdjustFeedbackBottomView")
        }
    }
}
