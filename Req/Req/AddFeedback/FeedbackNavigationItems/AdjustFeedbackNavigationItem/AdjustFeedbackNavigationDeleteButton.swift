//
//  AdjustFeedbackNavigationDeleteButton.swift
//  Req
//
//  Created by 이재웅 on 2022/06/14.
//

import SwiftUI

struct AdjustFeedbackNavigationDeleteButton: View {
    @State private var alertShow: Bool = false
    
    @Binding var changeFeedbackBottomView: FeedbackType
    @Binding var pins: [Pin]
    @Binding var currentPin: Pin
    
    var body: some View {
        Button {
            alertShow = true
        }
        label: {
            Text("삭제")
                .font(.system(size: 18.0, weight: .semibold))
                .foregroundColor(.red)
        }
        .alert("해당 피드백을 삭제하시겠습니까?", isPresented: $alertShow) {
            Button("취소", role: .cancel) { alertShow = false }
            Button("삭제", role: .destructive) {
                alertShow = false
                deletePin()
                
                changeFeedbackBottomView = .addFeedback
            }
        }
    }
}

extension AdjustFeedbackNavigationDeleteButton {
    
    func deletePin() {
        var pinCount = 0
        for pin in pins {
            if pin.id == currentPin.id {
                pins.remove(at: pinCount)
                
                return
            }
            pinCount += 1
        }
    }
    
}
