//
//  WriteFeedbackNavigationCompleteButton.swift
//  Req
//
//  Created by 이재웅 on 2022/06/14.
//

import SwiftUI

struct WriteFeedbackNavigationCompleteButton: View {
    @Binding var changeFeedbackBottomView: FeedbackType
    @Binding var title: String
    @Binding var description: String
    @Binding var pins: [Pin]
    @Binding var currentPin: Pin
    
    private var isWritten: Bool {
        if title != "" && description != "" { return true }
        else { return false }
    }
    
    var body: some View {
        Button {
            if changeFeedbackBottomView == .writeFeedback {
                completeWrtingFeedback()
            } else if changeFeedbackBottomView == .afterAdjustFeedback {
                completeAdjustFeedback()
            }
        } label: {
            Text("확인")
                .font(.system(size: 18.0, weight: .semibold))
                .foregroundColor(isWritten ? .black : .LightGrey)
        }
        .disabled(!isWritten)
    }
}

extension WriteFeedbackNavigationCompleteButton {
    
    // 피드백 작성 완료버튼
    func completeWrtingFeedback() {
        let lastIndex = pins.endIndex - 1
        pins[lastIndex].title = title
        pins[lastIndex].description = description
        
        title = ""
        description = ""
        
        changeFeedbackBottomView = .addFeedback
    }
    
    // 피드백 수정 완료버튼
    func completeAdjustFeedback() {
        currentPin.title = title
        currentPin.description = description
        
        var pinCount = 0
        for pin in pins {
            if pin.id == currentPin.id {
                pins[pinCount] = currentPin
            }
            pinCount += 1
        }
        
        title = ""
        description = ""
        
        changeFeedbackBottomView = .beforeAdjustFeedback
    }
}
