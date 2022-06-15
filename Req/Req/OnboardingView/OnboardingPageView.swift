//
//  OnboardingPageView.swift
//  Req
//
//  Created by Seyoung Choi on 2022/06/14.
//

import SwiftUI

struct OnboardingPageView: View {
    let title: String
    let title2: String
    let subtitle: String
    let subtitle2: String
    let LottieName: String
    
    var body: some View {
        VStack {
            Spacer().frame(height: 100)
            
            VStack{
                HStack{
                    Spacer().frame(width:32)
                    Text(title)
                        .font(.system(size: 60, weight: .bold))
                    Spacer()
                }
                HStack{
                    Spacer().frame(width:32)
                    Text(title2)
                        .font(.system(size: 60, weight: .bold))
                    Spacer()
                }
            }
            //온보딩 타이틀
            
            Spacer().frame(height: 6)
            
            ZStack {
                VStack{
                    Spacer().frame(height:160)
                    Rectangle()
                        .frame(width: 390, height: 165)
                        .foregroundColor(Color.purple)
                }
                LottieView(filename: LottieName)
            }
            //온보딩 이미지
            
            Spacer().frame(height: 24)
            
            VStack{
                Text(subtitle)
                    .font(.system(size: 18, weight: .semibold))
                Spacer().frame(height:4)
                Text(subtitle2)
                    .font(.system(size: 18, weight: .semibold))
            }
            //온보딩 설명
            
            
            //여기가 페이지 인디케이터 자리
            //인디케이터 들어가면 Spacer height 수정해서 조정해야함
            
            Spacer().frame(height: 100)
            
        }
    }
}

struct OnboardingPageView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPageView(
            title: "Take",
            title2: "A Picture",
            subtitle: "그 날의 패션을 지인을",
            subtitle2: "통해 기록하세요",
            LottieName: "Req_Onboarding_Lottie1"
        )
    }
}
