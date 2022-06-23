//
//  WriteFeedbackNavigationItem.swift
//  Req
//
//  Created by 이재웅 on 2022/06/13.
//

import SwiftUI

struct WriteFeedbackNavigationItem: View {
    @Binding var changeFeedbackBottomView: FeedbackType
    @Binding var title: String
    @Binding var description: String
    @Binding var pins: [Pin]
    @Binding var idCount: Int
    @Binding var currentPin: Pin
    
    var body: some View {
        HStack {
            Spacer()
                .frameRatio(width: 16.0)
            
            WriteFeedbackNavigationCancelButton(changeFeedbackBottomView: $changeFeedbackBottomView, title: $title, description: $description, pins: $pins, idCount: $idCount)
            
            Spacer()
            
            switch changeFeedbackBottomView {
            case .writeFeedback, .afterAdjustFeedback:
                WriteFeedbackNavigationCompleteButton(changeFeedbackBottomView: $changeFeedbackBottomView, title: $title, description: $description, pins: $pins, currentPin: $currentPin)
            default:
                EmptyView()
            }
            
            Spacer()
                .frameRatio(width: 16.0)
            
        } // HStack
        .frameRatio(width: 390.0, height: 51.0)
    }
}
