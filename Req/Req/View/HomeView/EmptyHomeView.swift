//
//  EmptyHomeView.swift
//  Req
//
//  Created by Seyoung Choi on 2022/06/15.
//

import SwiftUI

struct EmptyHomeView: View {
    @State private var showCameraView: Bool = false

    //    let text: String
    // merge 이후에 색 지정하면 색깔 바꿔주기
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .foregroundColor(.black)
                    .ignoresSafeArea()
                HStack {
                    Image("ReqLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frameRatio(width: 72, height: 32)
                        .padding()
                    Spacer()
                }
            }
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                        .frameRatio(height: 18)
                    HStack {
                        Spacer()
                            .frameRatio(width: 32)
                        ZStack(alignment: .leading) {
                            VStack(alignment: .leading, spacing: UIScreen.main.bounds.height * 4 / 844) {
                                GradientStyle3(textString: "Take")
                                GradientStyle3(textString: "A")
                                GradientStyle3(textString: "Picture")
                                GradientStyle3(textString: "And")
                                GradientStyle3(textString: "Get")
                                GradientStyle3(textString: "Feedback")
                            }
                            VStack(alignment: .leading, spacing: UIScreen.main.bounds.height * 10 / 844) {
                                GradientStyle(textString: "Take")
                                GradientStyle(textString: "A")
                                GradientStyle2(textString: "Picture")
                                GradientStyle(textString: "And")
                                GradientStyle(textString: "Get")
                                GradientStyle2(textString: "Feedback")

                            }
                        }
                        Spacer()
                    }
                    Spacer()
                        .foregroundColor(.clear)
                    Button {
                        showCameraView = true
                    } label: {
                        Text("사진 촬영하기")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frameRatio(width: 136, height: 46)
                            .background(Color.black)
                            .cornerRadius(25)
                    }
                        .fullScreenCover(isPresented: $showCameraView) {
                        FeedbackNameView(showCameraView: $showCameraView)
                            .preferredColorScheme(.light)
                    }

                    Spacer()
                        .frameRatio(height: 40)
                }
            }
        }
    }
}

struct EmptyHomeView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyHomeView()
    }
}
