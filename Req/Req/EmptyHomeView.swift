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
        VStack{
            ZStack{
                Rectangle()
                    .foregroundColor(.black)
                    .ignoresSafeArea()
                HStack {
                    Image("ReqLogo")
                        .resizable()
                        .frame(width: 72,height: 32)
                        .padding()
                    Spacer()
                }
            }
            Spacer().frame(height: 50 - 32)
            HStack{
                Spacer().frame(width: 32)
                ZStack(alignment: .leading){
                    VStack(alignment: .leading, spacing: 4){
                        GradientStyle3(textString: "Take")
                        GradientStyle3(textString: "A")
                        GradientStyle3(textString: "Picture")
                        GradientStyle3(textString: "And")
                        GradientStyle3(textString: "Get")
                        GradientStyle3(textString: "Feedback")
                    }
                    VStack(alignment: .leading, spacing: 12){
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
            Button {
                showCameraView = true
            } label: {
                Text("사진 촬영하기")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 136, height: 46)
                    .background(Color.black)
                    .cornerRadius(25)
            }
            .fullScreenCover(isPresented: $showCameraView) {
                FeedbackNameView(showCameraView: $showCameraView)
            }
            
            Spacer().frame(height: 40)
        }
    }
}

struct EmptyHomeView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyHomeView()
    }
}
