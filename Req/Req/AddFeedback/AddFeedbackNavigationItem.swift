//
//  FeedbackNavigationItem.swift
//  Req
//
//  Created by 이재웅 on 2022/06/13.
//

import SwiftUI

struct AddFeedbackNavigationItem: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @Binding var pins: [Pin]
    
    var body: some View {
        HStack() {
            Spacer()
                .frame(width: 16.0)
            
            Button {
                popToRootView()
            } label: {
                Image(systemName: "xmark")
                    .resizable()
                    .frame(width: 14.0, height: 14.0, alignment: .center)
                    .foregroundColor(.black)
            }

            Spacer()
            
            if !pins.isEmpty {
                Button {
                
                } label: {
                    Text("저장하기")
                        .font(.system(size: 18.0, weight: .semibold))
                        .foregroundColor(.black)
                }
                
                Spacer()
                    .frame(width: 16.0)
            }
        }
        .frame(width: 390.0, height: 51.0)
    }
}

extension AddFeedbackNavigationItem {
    
    func popToRootView() {
        self.presentationMode.wrappedValue.dismiss()
    }
    //출처 : https://sweetdev.tistory.com/695
    
}
