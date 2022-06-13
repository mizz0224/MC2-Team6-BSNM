//
//  FeedbackNavigationBar.swift
//  Req
//
//  Created by 이재웅 on 2022/06/13.
//

import SwiftUI

struct FeedbackNavigationBar: View {
    @Binding var changeFeedbackBottomView: FeedbackType
    @Binding var title: String
    @Binding var description: String
    @Binding var pins: [Pin]
    @Binding var idCount: Int
    @Binding var currentPin: Pin
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
                .frame(height: 48.0)
            
            switch changeFeedbackBottomView {
            case .addFeedback:
                AddFeedbackNavigationItem(pins: $pins)
            case .beforeAdjustFeedback:
                AdjustFeedbackNavigationItem(changeFeedbackBottomView: $changeFeedbackBottomView, title: $title, description: $description, currentPin: $currentPin)
            default:
                WriteFeedbackNavigationItem(changeFeedbackBottomView: $changeFeedbackBottomView, title: $title, description: $description, pins: $pins, idCount: $idCount, currentPin: $currentPin)
            }
        }
    }
}
