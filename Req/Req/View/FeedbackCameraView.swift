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
    
    //TODO: 카메라 취소 버튼 누르면 홈으로 돌아가는 로직 만들 것
    @State var didTapCapture: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {

                Rectangle()
                    .frame(height: 100)
                    .foregroundColor(.black)

                if self.image == nil {
                    ZStack {
                        CustomCameraRepresentable(image: self.$image, didTapCapture: $didTapCapture)
                            
                        
                        Image("silhouette")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 520)
                    }
                    .frame(height: 520)
                  
                }
                else {
                    Image(uiImage: self.image!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: UIScreen.main.bounds.height * (520 / 844))
                }

                ZStack {
                    Rectangle()
                        .foregroundColor(.black)

                    if self.image == nil {
                        VStack {
                            Text("얼굴을 제외하고 사진을 찍어주세요.")
                                .font(.custom("Apple SD Gothic Neo Regular", size: 15))
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))

                            Spacer(minLength: 52)

                            Button(action: {
                                self.didTapCapture = true
                            }) {
                                Image("cameraButton")
                            }
                            Spacer(minLength: 52)
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
                                        .padding(EdgeInsets(top: 0, leading: 28, bottom: 60, trailing: 0))
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
