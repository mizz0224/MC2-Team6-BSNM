//
//  WriteFeedbackNavigationItem.swift
//  Req
//
//  Created by 이재웅 on 2022/06/13.
//

import SwiftUI

struct WriteFeedbackNavigationItem: View {
    
    var body: some View {
        HStack() {
            Spacer()
                .frame(width: 16.0)
            
            Button {
                
            } label: {
                Text("취소")
                    .font(.system(size: 18.0, weight: .semibold))
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Text("확인")
                    .font(.system(size: 18.0, weight: .semibold))
                    .foregroundColor(.black)
            }
            
            Spacer()
                .frame(width: 16.0)
        }
        .frame(width: 390.0, height: 51.0)
    }
}
