//
//  FeedbackBottomView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/11.
//

import SwiftUI

struct FeedbackBottomView: View {
    @Binding var isTouchedAddFeedbackButton: Bool
    
    var body: some View {
        if !isTouchedAddFeedbackButton {
            BeforeAddFeedbackBottomView(isTouchedAddFeedbackButton: $isTouchedAddFeedbackButton)
        } else {
            AfterAddFeedbackBottomView()
        }
    }
}
