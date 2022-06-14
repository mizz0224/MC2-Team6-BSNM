//
//  FeedbackNavigationItem.swift
//  Req
//
//  Created by 이재웅 on 2022/06/13.
//

import SwiftUI

//TODO: Button별 분리
struct AddFeedbackNavigationItem: View {
    @Binding var pins: [Pin]
    
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 16.0)
            
            AddFeedbackNavigationXButton()
            
            Spacer()
            
            if !pins.isEmpty {
                AddFeedbackNavigationSaveButton()
                Spacer()
                    .frame(width: 16.0)
            }
        }
        .frame(width: 390.0, height: 51.0)
    }
}
