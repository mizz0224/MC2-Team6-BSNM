//
//  FeedbackNavigationItem.swift
//  Req
//
//  Created by 이재웅 on 2022/06/13.
//

import SwiftUI

struct AddFeedbackNavigationItem: View {
    @Binding var pins: [Pin]
    
    let reviewerName: String
    let image: UIImage
    
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 16.0)
            
            AddFeedbackNavigationXButton()
            
            Spacer()
            
            if !pins.isEmpty {
                AddFeedbackNavigationSaveButton(pins: $pins, reviewerName: reviewerName, image: image)
                Spacer()
                    .frame(width: 16.0)
            }
        }
        .frame(width: 390.0, height: 51.0)
    }
}
