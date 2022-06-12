//
//  TestCameraView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/11.
//

import SwiftUI

struct TestCameraView: View {
    @State private var showView = false
    
    var body: some View {
        Button {
            showView = true
        } label: {
            Text("피드백하기")
        }
        .fullScreenCover(isPresented: $showView) {
            AddFeedbackView()
        }
    }
}

struct TestCameraView_Previews: PreviewProvider {
    static var previews: some View {
        TestCameraView()
    }
}
