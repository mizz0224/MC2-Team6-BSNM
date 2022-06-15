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
            
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 400)
            //온보딩 이미지
            
            VStack{
                Text(subtitle)
                    .font(.system(size: 18, weight: .semibold))
                Spacer().frame(height:4)
                Text(subtitle2)
                    .font(.system(size: 18, weight: .semibold))
            }.offset(y: 10)
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
            subtitle2: "여러분의 패션을 성장시키세요", isFirstLaunching: .constant(true)
        )

    }
}
