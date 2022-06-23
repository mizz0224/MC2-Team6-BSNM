//
//  FeedbackNameView.swift
//  Req
//
//  Created by Choi Inho on 2022/06/15.
//

import SwiftUI

struct FeedbackNameView: View {
    @State var name: String = ""
    @Binding var showCameraView: Bool

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                HStack {
                    Button(action: { self.showCameraView = false }) {
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.black)
                    }
                        .padding()
                    Spacer()
                }

                Spacer()
                    .frameRatio(height: 44)

                Group {
                    Divider()
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                    VStack(alignment: .center, spacing: 0) {

                        Text("피드백하는 사람의 이름이")
                            .font(.custom("Apple SD Gothic Neo Bold", size: 18))
                            .foregroundColor(.ReqBlack)
                            .padding(.bottom, 4)

                        Text("무엇인가요?")
                            .font(.custom("Apple SD Gothic Neo Bold", size: 18))
                            .foregroundColor(.ReqBlack)
                    }
                        .padding(EdgeInsets(top: 32, leading: 0, bottom: 32, trailing: 0))

                    Divider()
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 28, trailing: 16))

                    CustomTextField(name: self.$name)
                }

                Spacer()

                if !self.name.isEmpty {
                    NavigationLink(
                        destination: { FeedbackCameraView(name: self.$name, showCameraView: $showCameraView)
                                .preferredColorScheme(.dark)
                                .navigationBarTitleDisplayMode(.inline)
                                .navigationBarHidden(true)
                        }) {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.black)

                            Text("사진 촬영하기")
                                .font(.custom("Apple SD Gothic Neo Medium", size: 16))
                                .foregroundColor(.white)
                        }
                            .frameRatio(height: 56)
                    }
                }
            }

                .navigationBarHidden(true)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)

        }
            .preferredColorScheme(.light)
    }
}

struct CustomTextField: View {
    @Binding var name: String

    var body: some View {
        ZStack {
            if self.name.isEmpty {
                Text("이름 입력은 05자로 제한됩니다.")
                    .font(.custom("Apple SD Gothic Neo Bold", size: 24))
                    .foregroundColor(.black.opacity(0.2)) //FIXME: 글자 입력 안됐을 시 투명도 조절할 것
            }
            TextField("", text: self.$name)
                .multilineTextAlignment(.center)
        }
    }
}
