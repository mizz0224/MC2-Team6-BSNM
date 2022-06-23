//
//  FeedbackNavigationItem.swift
//  Req
//
//  Created by 이재웅 on 2022/06/13.
//

import SwiftUI

struct AddFeedbackNavigationItem: View {
    @Binding var pins: [Pin]
    @Binding var showCameraView: Bool
    
    let reviewerName: String
    let image: UIImage
    
    var body: some View {
        HStack {
            Spacer()
                .frameRatio(width: 16.0)
            
            AddFeedbackNavigationXButton(showCameraView: $showCameraView)
            
            Spacer()
            
            if !pins.isEmpty {
                AddFeedbackNavigationSaveButton(pins: $pins, showCameraView: $showCameraView, reviewerName: reviewerName, image: image)
                Spacer()
                    .frameRatio(width: 16.0)
            }
        }
        .frameRatio(width: 390.0, height: 51.0)
    }
}
