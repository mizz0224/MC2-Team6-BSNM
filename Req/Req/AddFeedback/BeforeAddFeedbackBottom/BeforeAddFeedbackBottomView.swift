//
//  BeforeAddFeedbackBottomView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/12.
//

import SwiftUI

struct BeforeAddFeedbackBottomView: View {
    @Binding var isTouchedAddFeedbackButton: Bool
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 34.0)
            BeforeAddFeedbackText()
            Spacer()
                .frame(height: 30.0)
            AddFeedbackButton(isTouchedAddFeedbackButton: $isTouchedAddFeedbackButton)
            Spacer()
                .frame(height: 60.0)
        }
    }
}
