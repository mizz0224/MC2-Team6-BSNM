//
//  FeedbackNavigationBar.swift
//  Req
//
//  Created by 이재웅 on 2022/06/13.
//

import SwiftUI

struct FeedbackNavigationBar: View {
    @Binding var changeFeedbackBottomView: FeedbackType
    @Binding var title: String
    @Binding var description: String
    @Binding var pins: [Pin]
    @Binding var idCount: Int
    @Binding var currentPin: Pin
    @Binding var showCameraView: Bool
    
    let reviewerName: String
    let image: UIImage
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 48.0)

            switch changeFeedbackBottomView {
            case .addFeedback:
                AddFeedbackNavigationItem(pins: $pins, showCameraView: $showCameraView, reviewerName: reviewerName, image: image)
            case .beforeAdjustFeedback:
                AdjustFeedbackNavigationItem(changeFeedbackBottomView: $changeFeedbackBottomView, title: $title, description: $description, pins: $pins, currentPin: $currentPin)
            default:
                WriteFeedbackNavigationItem(changeFeedbackBottomView: $changeFeedbackBottomView, title: $title, description: $description, pins: $pins, idCount: $idCount, currentPin: $currentPin)
            }
        }
        .background(Color.white)
    }
}
