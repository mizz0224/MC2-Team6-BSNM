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
    var pinColor: Color {
        switch changeFeedbackBottomView {
        case .addFeedback, .touchPin:
            return .gray
        default:
            return .purple
        }
    }
    var pinFrame: CGFloat {
        switch changeFeedbackBottomView {
        case .addFeedback, .touchPin:
            return 32.0
        default:
            return 44.0
        }
    }
    
    var body: some View {
        Image(systemName: "text.bubble.fill")
            .resizable()
            .foregroundColor(pinColor)
            .frame(width: pinFrame, height: pinFrame)
            .position(x: pin.x, y: pin.y)
            .onTapGesture {
                changeFeedbackBottomView = .beforeAdjustFeedback
                currentPin = pin
            }
            .disabled(!isAbleTouched)
    }
}
