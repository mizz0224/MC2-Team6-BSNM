//
//  FeedbackNameView.swift
//  Req
//
//  Created by Choi Inho on 2022/06/15.
//

import SwiftUI

struct FeedbackNameView: View {
    @State var name: String = ""

    var body: some View {
        //TODO: 네비게이션 바로 진행할 것인지 커스텀 바로 진행할 것인지 정할 것
        NavigationView {
            VStack {
                Group {
                    Divider()
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                    VStack(alignment: .center, spacing: 0) {

                        Text("피드백하는 사람의 이름이")
                            .font(.custom("Apple SD Gothic Neo Bold", size: 18))
                            .foregroundColor(.black)
                            .padding(.bottom, 4)

                        Text("무엇인가요?")
                            .font(.custom("Apple SD Gothic Neo Bold", size: 18))
                            .foregroundColor(.black)
                    }
                        .padding(EdgeInsets(top: 32, leading: 0, bottom: 32, trailing: 0))

                    Divider()
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 28, trailing: 16))

                }

                Spacer()

                if !self.name.isEmpty {
                    NavigationLink(destination: { /*TODO: 카메라와 링크 연결할 것*/ }) {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.black)
                            
                            Text("사진 촬영하기")
                                .font(.custom("Apple SD Gothic Neo Medium", size: 16))
                                .foregroundColor(.white)
                        }
                            .frame(height: 56)
                    }
                }
            }

        }
    }
}

struct FeedbackNameView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackNameView()
    }
}

