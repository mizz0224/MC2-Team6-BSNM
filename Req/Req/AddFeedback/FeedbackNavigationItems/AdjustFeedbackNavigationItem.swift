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
            
            Button {
                changeFeedbackBottomView = .addFeedback
            } label: {
                Text("취소")
                    .font(.system(size: 18.0, weight: .semibold))
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            Button {
                adjustInformation()
            } label: {
                Text("수정")
                    .font(.system(size: 18.0, weight: .semibold))
                    .foregroundColor(.black)
            }
            
            Spacer()
                .frame(width: 28.0)
            
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
            } // 삭제버튼
            
            Spacer()
                .frame(width: 16.0)
            
        } // HStack
        .frame(width: 390.0, height: 51.0)

    }
}

extension AdjustFeedbackNavigationItem {
    
    func adjustInformation() {
        changeFeedbackBottomView = .afterAdjustFeedback
        
        if let pinTitle = currentPin.title { title = pinTitle } else { title = "title을 불러오지 못했습니다."}
        if let pinDescription = currentPin.description { description = pinDescription } else { description = "description을 불러오지 못했습니다."}
    }
    
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
