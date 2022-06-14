//
//  AdjustFeedbackNavigationItem.swift
//  Req
//
//  Created by 이재웅 on 2022/06/13.
//

import SwiftUI

//TODO: Button별 분리
struct AdjustFeedbackNavigationItem: View {
    @State private var alertShow: Bool = false
    
    @Binding var changeFeedbackBottomView: FeedbackType
    @Binding var title: String
    @Binding var description: String
    @Binding var pins: [Pin]
    @Binding var currentPin: Pin
    
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 16.0)
            
            AdjustFeedbackNavigationCancelButton(changeFeedbackBottomView: $changeFeedbackBottomView)
            
            Spacer()
            
            AdjustFeedbackNavigationAdjustButton(changeFeedbackBottomView: $changeFeedbackBottomView, title: $title, description: $description, currentPin: $currentPin)
            
            Spacer()
                .frame(width: 28.0)
            
            AdjustFeedbackNavigationDeleteButton(changeFeedbackBottomView: $changeFeedbackBottomView, pins: $pins, currentPin: $currentPin)
            
            Spacer()
                .frame(width: 16.0)
            
        } // HStack
        .frame(width: 390.0, height: 51.0)

    }
}
