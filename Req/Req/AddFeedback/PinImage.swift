//
//  PinImage.swift
//  Req
//
//  Created by 이재웅 on 2022/06/12.
//

import SwiftUI

struct PinImage: View {
    @Binding var changeFeedbackBottomView: FeedbackType
    @Binding var pins: [Pin]
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
    var pinColor: Color {
        switch changeFeedbackBottomView {
        case .addFeedback, .touchPin:
            return .gray
        default:
            return pin == currentPin ? .purple : .gray
        }
    }
    var pinFrame: CGFloat {
        switch changeFeedbackBottomView {
        case .addFeedback, .touchPin:
            return 32.0
        default:
            return pin == currentPin ? 44.0 : 32.0
        }
    }
    
    var body: some View {
        Image(systemName: "text.bubble.fill")
            .resizable()
            .foregroundColor(pinColor)
            .frame(width: pinFrame, height: pinFrame)
            .position(x: pin.x, y: pin.y)
            .onTapGesture {
                currentPin = pin
                changeFeedbackBottomView = .beforeAdjustFeedback
            }
            .disabled(!isAbleTouched)
    }
}
