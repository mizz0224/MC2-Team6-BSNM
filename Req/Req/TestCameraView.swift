//
//  TestCameraView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/11.
//

import SwiftUI

struct TestCameraView: View {
    
    let reviewerName: String = "커리"
    let reviewImage: UIImage = UIImage(named: "TestImage")!
    
    var body: some View {
        NavigationView {
            NavigationLink {
                AddFeedbackView(reviewerName: reviewerName, image: reviewImage)
            } label: {
                Text("피드백하기")
            }
        }
    }
}

struct TestCameraView_Previews: PreviewProvider {
    static var previews: some View {
        TestCameraView()
    }
}
