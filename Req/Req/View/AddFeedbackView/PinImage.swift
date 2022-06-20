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
    var pinFrame: CGFloat {
        switch changeFeedbackBottomView {
        case .addFeedback, .touchPin:
            return 32.0
        default:
            return pin == currentPin ? 44.0 : 32.0
        }
    }
    
    var body: some View {
        if pin == currentPin {
            switch changeFeedbackBottomView {
            case .addFeedback, .touchPin:
                LottieView(filename: "FeedbackUnselectPinLottie")
                    .frame(width: 50.0, height: 50.0)
                    .position(x: pin.x, y: pin.y)
                    .onTapGesture {
                        currentPin = pin
                        changeFeedbackBottomView = .beforeAdjustFeedback
                    }
                    .disabled(!isAbleTouched)
                
            case .beforeAdjustFeedback:
                LottieView(filename: "FeedbackExistPinLottie")
                    .frame(width: 50.0, height: 50.0)
                    .position(x: pin.x, y: pin.y)
                    .onTapGesture {
                        currentPin = pin
                        changeFeedbackBottomView = .beforeAdjustFeedback
                    }
            default:
                LottieView(filename: "FeedbackPinLottie")
                    .frame(width: 50.0, height: 50.0)
                    .position(x: pin.x, y: pin.y)
                    .onTapGesture {
                        currentPin = pin
                        changeFeedbackBottomView = .beforeAdjustFeedback
                    }
                    .disabled(!isAbleTouched)
            }
        } else {
            Image("FeedbackViewPinImage")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 50.0, height: 50.0)
                .position(x: pin.x, y: pin.y)
                .onTapGesture {
                    currentPin = pin
                    changeFeedbackBottomView = .beforeAdjustFeedback
                }
                .disabled(!isAbleTouched)
        }
    }
}
