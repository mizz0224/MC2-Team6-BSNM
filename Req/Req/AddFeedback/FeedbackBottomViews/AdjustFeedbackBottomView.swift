//
//  AdjustFeedbackBottomView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/13.
//

import SwiftUI

struct AdjustFeedbackBottomView: View {
    @Binding var currentPin: Pin
    
    private var title: String {
        if let title = currentPin.title { return title }
        else { return "title을 불러오지 못했습니다." }
    }
    
    private var description: String {
        if let description = currentPin.description { return description }
        else { return "description을 불러오지 못했습니다." }
    }
    
    var body: some View {
        VStack(alignment: .leading ,spacing: 0) {
            Spacer()
                .frame(height: 24.0)
            
            Text(title)
                .font(.system(size: 24.0, weight: .bold))
                .frame(width: 358.0, height: 24.0, alignment: .topLeading)
            
            Spacer()
                .frame(height: 20.0)
            
            DivisionLine()
            
            Spacer()
                .frame(height: 20.0)
            
            Text(description)
                .font(.system(size: 14.0))
                .frame(width: 358.0, height: 130.0, alignment: .topLeading)
        }
    }
}

