//
//  AdjustFeedbackNavigationItem.swift
//  Req
//
//  Created by 이재웅 on 2022/06/13.
//

import SwiftUI

struct AdjustFeedbackNavigationItem: View {
    @Binding var changeFeedbackBottomView: FeedbackType
    
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
                
            } label: {
                Text("수정")
                    .font(.system(size: 18.0, weight: .semibold))
                    .foregroundColor(.black)
            }
            
            Spacer()
                .frame(width: 28.0)
            
            Button {
                
            } label: {
                Text("삭제")
                    .font(.system(size: 18.0, weight: .semibold))
                    .foregroundColor(.red)
            }
            
            Spacer()
                .frame(width: 16.0)
            
        } // HStack
        .frame(width: 390.0, height: 51.0)

    }
}
