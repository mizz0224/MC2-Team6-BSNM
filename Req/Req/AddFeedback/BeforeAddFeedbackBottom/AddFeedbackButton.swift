//
//  AddFeedbackButton.swift
//  Req
//
//  Created by 이재웅 on 2022/06/11.
//

import SwiftUI

struct AddFeedbackButton: View {
    @Binding var changeFeedbackBottomView: FeedbackType
    
    var body: some View {
        Button {
            touchAddFeedbackButton()
        } label: {
            RoundedRectangle(cornerRadius: 50.0)
                .frame(width: 150.0, height: 46.0, alignment: .center)
                .foregroundColor(.black)
                .overlay(
                    Text("피드백 추가하기")
                        .font(.system(size: 16.0))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                )
        }
    }
}

extension AddFeedbackButton {
    
    func touchAddFeedbackButton() {
        changeFeedbackBottomView = .touchPin
    }
}
