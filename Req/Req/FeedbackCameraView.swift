//
//  FeedbackCameraView.swift
//  Req
//
//  Created by Choi Inho on 2022/06/14.
//

import SwiftUI

struct FeedbackCameraView: View {
    @ObservedObject var viewModel = CameraViewModel()

    var body: some View {
        VStack(spacing: 0) {

            Rectangle()
                .frame(height: 100)
                .foregroundColor(.black)

            viewModel.cameraPreview
                .onAppear {
                viewModel.configure()
            }

            ZStack {
                Rectangle()
                    .foregroundColor(.black)

                Button(action: { viewModel.capturePhoto() }) {
                    Image(systemName: "camera.circle")
                }
            }.frame(height: 224)
        }
            .ignoresSafeArea()
    }
}

struct FeedbackCameraView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackCameraView()
    }
}
