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
        NavigationView {
            VStack(spacing: 0) {

                Rectangle()
                    .frame(height: 100)
                    .foregroundColor(.black)

                if viewModel.recentImage == nil {
                    viewModel.cameraPreview
                        .onAppear {
                        viewModel.configure()
                    }
                }
                else {
                    Image(uiImage: viewModel.recentImage!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: UIScreen.main.bounds.height * (520 / 844))
                }

                ZStack {
                    Rectangle()
                        .foregroundColor(.black)

                    if viewModel.recentImage == nil {
                        VStack {
                            Text("얼굴을 제외하고 사진을 찍어주세요.")
                                .font(.custom("Apple SD Gothic Neo Regular", size: 15))
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))

                            Spacer(minLength: 52)

                            Button(action: { viewModel.capturePhoto() }) {
                                Image("cameraButton")
                            }
                            Spacer(minLength: 52)
                        }
                    } else {
                        VStack {
                            Spacer()

                            HStack {
                                Button(action: { viewModel.recentImage = nil }) {
                                    Text("다시 찍기")
                                        .font(.custom("Apple SD Gothic Neo Bold", size: 18))
                                        .foregroundColor(.white)
                                        .padding(EdgeInsets(top: 0, leading: 28, bottom: 60, trailing: 0))
                                }
                                Spacer()
                                NavigationLink(destination: { /*TODO: 다음 View*/ }) {
                                    Text("피드백 하기")
                                        .font(.custom("Apple SD Gothic Neo Bold", size: 18))
                                        .foregroundColor(.white)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 60, trailing: 28))
                                }
                            }
                        }
                    }
                }.frame(height: 224)
            }
                .ignoresSafeArea()
        }
    }
}

struct FeedbackCameraView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackCameraView()
    }
}
