//
//  AdjustFeedbackNavigationAdjustButton.swift
//  Req
//
//  Created by 이재웅 on 2022/06/14.
//

import SwiftUI

struct AdjustFeedbackNavigationAdjustButton: View {
    @Binding var changeFeedbackBottomView: FeedbackType
    @Binding var title: String
    @Binding var description: String
    @Binding var currentPin: Pin

    
    var body: some View {
        Button {
            adjustInformation()
        } label: {
            Text("수정")
                .font(.system(size: 18.0, weight: .semibold))
                .foregroundColor(.black)
        }
    }
}

extension AdjustFeedbackNavigationAdjustButton {
    
    func adjustInformation() {
        changeFeedbackBottomView = .afterAdjustFeedback
        
        if let pinTitle = currentPin.title { title = pinTitle } else { title = "title을 불러오지 못했습니다."}
        if let pinDescription = currentPin.description { description = pinDescription } else { description = "description을 불러오지 못했습니다."}
    }
    
}
