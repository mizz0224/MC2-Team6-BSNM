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
    let imageName: String
    let subtitle: String
    let subtitle2: String
    
    var body: some View {
        VStack {
            Spacer().frame(height: 56)
            VStack{
                Text(title)
                    .font(.system(size: 60, weight: .bold))
                    .offset(x: -101)
                Text(title2)
                    .font(.system(size: 60, weight: .bold))
                    .offset(x: -40)
            }
            
            Spacer().frame(height: 6)
            
            ZStack {
                VStack{
                    Spacer().frame(height:180)
                    Rectangle()
                        .frame(width: 390, height: 160)
                        .foregroundColor(Color.purple)
                }
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 347)
            }
            
            Spacer().frame(height: 24)
            
            VStack{
                Text(subtitle)
                    .font(.system(size: 18, weight: .medium))
                Spacer().frame(height:4)
                Text(subtitle2)
                    .font(.system(size: 18, weight: .medium))
            }
            
            Spacer().frame(height: 100)
            
            HStack{
                Spacer().frame(width: 32)
                Button {
                    
                } label: {
                    Text("Skip")
                        .foregroundColor(.gray)
                        .font(.system(size: 24, weight: .bold))
                }
                Spacer()
            }
            
            Spacer().frame(height: 40)
            
        }
    }
}

struct OnboardingPageView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPageView(
            title: "Take",
            title2: "A Picture",
            imageName: "온보딩이미지1",
            subtitle: "그 날의 패션을 지인을",
            subtitle2: "통해 기록하세요"
        )
    }
}
