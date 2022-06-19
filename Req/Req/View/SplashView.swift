//
//  SplashView.swift
//  Req
//
//  Created by Choi Inho on 2022/06/19.
//

import SwiftUI

struct SplashView: View {
    @State var isActive: Bool = false

    var body: some View {
        VStack {
            if self.isActive {
                OnboardingCheckView()
            } else {
                Splash()
            }
        }
            .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}



struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

struct Splash: View {
    private let darkGray: Color = Color(.sRGB, red: 70 / 255, green: 70 / 255, blue: 70 / 255, opacity: 1)
    private let gray: Color = Color(.sRGB, red: 168 / 255, green: 169 / 255, blue: 172 / 255, opacity: 1)

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .background(.white)
                .ignoresSafeArea()

            Rectangle()
                .background(.clear)
                .foregroundColor(.clear)
                .border(darkGray, width: 1)
                .padding(EdgeInsets(top: 60, leading: 20, bottom: 28, trailing: 20))
                .ignoresSafeArea()

            VStack {
                Spacer()

                Image("SplashImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 184.18, height: 126.62)
                    .padding(.bottom, 42)

                Divider()
                    .background(darkGray)
                    .frame(width: 313)

                Text("REQ로 패션을 기록하다")
                    .foregroundColor(gray)
                    .font(.custom("Apple SD Gothic Neo Bold", size: 18))
                    .padding(11)

                Divider()
                    .background(darkGray)
                    .frame(width: 313)

                Spacer()
                    .frame(height: 253)

                Text("BSNM")
                    .font(.custom("Apple SD Gothic Neo Bold", size: 18))
                    .foregroundColor(darkGray)
                    .padding(.bottom, 13)
            }
        }
    }
}

