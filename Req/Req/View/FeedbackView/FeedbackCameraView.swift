//
//  FeedbackCameraView.swift
//  Req
//
//  Created by Choi Inho on 2022/06/14.
//

import SwiftUI

struct FeedbackCameraView: View {
    @State var image: UIImage? = nil
    @Binding var name: String
    @Binding var showCameraView: Bool
    @State var didTapCapture: Bool = false

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {

                ZStack(alignment: .leading) {
                    Rectangle()
                        .foregroundColor(.black)
                        .ignoresSafeArea()
                    Button(action: {
                        print("tapped FeedbackCameratView X Button")
                        self.showCameraView.toggle()
                    }) {
                        Image("x_button")
                            .foregroundColor(.white)
                            .paddingRatio(.leading, 16.5)
                            .paddingRatio(.bottom, 20)
                            .paddingRatio(.top, 45)
                    }
                }
                .frameRatio(height: 87.5)

                if self.image == nil {
                    ZStack {
                        CustomCameraRepresentable(image: self.$image, didTapCapture: $didTapCapture)
                            .frameRatio(height: 520)

                        Image("silhouette")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frameRatio(height: 520)
                    }
                        .frameRatio(height: 520)
                }
                else {
                    Image(uiImage: self.image!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frameRatio(height: 520)
                }

                FeedbackCameraBottomView(image: self.$image, name: self.$name, showCameraView: self.$showCameraView, didTapCapture: self.$didTapCapture)
            }
            .navigationBarHidden(true)
        }// NavigationView
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct FeedbackCameraBottomView: View {
    @Binding var image: UIImage?
    @Binding var name: String
    @Binding var showCameraView: Bool
    @Binding var didTapCapture: Bool

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.black)

            if self.image == nil {
                VStack {
                    Text("얼굴을 제외하고 사진을 찍어주세요.")
                        .font(.custom("Apple SD Gothic Neo Regular", size: 15))
                        .foregroundColor(.white)
                        .paddingRatio(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))

                    Spacer()
                        .frameRatio(height: 52)

                    Button(action: {
                        self.didTapCapture = true
                    }) {
                        Image("cameraButton")
                    }
                    Spacer()
                        .frameRatio(height: 52)
                }
            } else {
                VStack {
                    Spacer()

                    HStack {
                        Button(action: {
                            self.image = nil
                            self.didTapCapture = false
                        }) {
                            Text("다시 찍기")
                                .font(.custom("Apple SD Gothic Neo Bold", size: 18))
                                .foregroundColor(.white)
                                .paddingRatio(EdgeInsets(top: 0, leading: 28, bottom: 60, trailing: 0))
                        }
                        Spacer()
                        NavigationLink(destination: {
                            AddFeedbackView(
                                reviewerName: self.$name,
                                image: self.$image,
                                showCameraView: self.$showCameraView
                            )
                        }) {
                            Text("피드백 하기")
                                .font(.custom("Apple SD Gothic Neo Bold", size: 18))
                                .foregroundColor(.white)
                                .paddingRatio(EdgeInsets(top: 0, leading: 0, bottom: 60, trailing: 28))
                        }
                    }
                }
            }
        }
            .frameRatio(height: 224)
            .ignoresSafeArea()
            .preferredColorScheme(.dark)
    }
}
