//
//  OnboardingLastPageView.swift
//  Req
//
//  Created by Seyoung Choi on 2022/06/14.
//

import SwiftUI

struct OnboardingLastPageView: View {
    let title: String
    let imageName: String
    let subtitle: String
    let subtitle2: String
    let LottieName: String
    let LottieName2: String
    
    @State var startTimer: Int = 0
    
    @Binding var isFirstLaunching: Bool
    var body: some View {
        VStack {
            Spacer().frame(height: 130)
            
            VStack{
                HStack{
                    Spacer().frame(width:32)
                    Text(title)
                        .font(.system(size: 60, weight: .bold))
                    Spacer()
                }
            }
            //온보딩 타이틀
            
            Spacer().frame(height: 6)
            
            ZStack{
                LottieView(filename: LottieName)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 390)
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) { timer in
                            self.startTimer += 1
                        }
                    }
                if self.startTimer >= 1 {
                    LottieLoopView(filename: LottieName2)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .offset(y: 60)
                }
            }
            //온보딩 로티 애니메이션
            
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

struct OnboardingLastPageView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingLastPageView(
            title: "Grow Up!",
            imageName: "온보딩이미지3",
            subtitle: "Req한 기록을 통해",
            subtitle2: "여러분의 패션을 성장시키세요",
            LottieName: "Req_Onboarding_Lottie3",
            LottieName2: "Req_Onboarding_Star",
            isFirstLaunching: .constant(true)
        )
        
    }
}
