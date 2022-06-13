//
//  PinImage.swift
//  Req
//
//  Created by 이재웅 on 2022/06/12.
//

import SwiftUI

struct PinImage: View {
    @Binding var changeFeedbackBottomView: FeedbackType
    @Binding var currentPin: Pin
    
    var pin: Pin
    var isAbleTouched: Bool {
        switch changeFeedbackBottomView {
        case .addFeedback:
            return true
        default:
            return false
        }
    }
    
    var body: some View {
        Image(systemName: "text.bubble.fill")
            .resizable()
            .foregroundColor(.gray)
            .frame(width: 32.0, height: 32.0)
            .position(x: pin.x, y: pin.y)
            .onTapGesture {
                changeFeedbackBottomView = .beforeAdjustFeedback
                currentPin = pin
            }
            .disabled(!isAbleTouched)
    }
}
