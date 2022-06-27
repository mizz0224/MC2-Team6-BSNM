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
                    Button(action: { self.showCameraView.toggle() }) {
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.black)
                    }
                        .padding()
                    Spacer()
                }

                Spacer()
                    .frameRatio(height: 44)

                Group {
                    VStack(alignment: .center, spacing: 0) {

                        Text("피드백하는 지인의 이름을 입력한 뒤에")
                            .font(.custom("Apple SD Gothic Neo Bold", size: 18))
                            .foregroundColor(.ReqBlack)
                            .paddingRatio(.bottom, 4)

                        Text("사진 촬영을 부탁하세요")
                            .font(.custom("Apple SD Gothic Neo Bold", size: 18))
                            .foregroundColor(.ReqBlack)
                        
                        Image("NameViewImage")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width - 10, height: (UIScreen.main.bounds.width - 10) / 2, alignment: .center)
                    }

                    Divider()
                        .paddingRatio(EdgeInsets(top: 0, leading: 16, bottom: 28, trailing: 16))

                    CustomTextField(name: self.$name)
                }

                Spacer()

                if !self.name.isEmpty {
                    NavigationLink(
                        destination: { FeedbackCameraView(name: self.$name, showCameraView: $showCameraView)
                                .ignoresSafeArea()
                                .preferredColorScheme(.dark)
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
