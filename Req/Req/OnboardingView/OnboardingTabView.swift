//
//  OnboardingTabView.swift
//  Req
//
//  Created by Seyoung Choi on 2022/06/14.
//

import SwiftUI

struct OnboardingTabView: View {
    @State var pageIndex = 1
    @Binding var isFirstLaunching: Bool
    
    var body: some View {
        VStack{
            TabView(selection: $pageIndex) {
                
                OnboardingPageView(
                    title: "Take",
                    title2: "A Picture",
                    imageName: "온보딩이미지1",
                    subtitle: "그 날의 패션을 지인을",
                    subtitle2: "통해 기록하세요"
                )
                .tag(1)
                
                OnboardingPageView(
                    title: "Get",
                    title2: "Feedback",
                    imageName: "온보딩이미지2",
                    subtitle: "피드백을 요청하고",
                    subtitle2: "새로운 시선을 확인하세요"
                )
                .tag(2)
                
                OnboardingLastPageView(
                    title: "Grow Up!",
                    imageName: "온보딩이미지3",
                    subtitle: "Req한 기록을 통해",
                    subtitle2: "여러분의 패션을 성장시키세요",
                    isFirstLaunching: $isFirstLaunching
                )
                .tag(3)
            }
            .tabViewStyle(
                PageTabViewStyle(indexDisplayMode: .always)
            )
            
            
            //온보딩 마지막 페이지에서 앱 시작하기 버튼
            if pageIndex == 3
            {
                HStack{
                    Spacer().frame(height: 100)
                    Button {
                        isFirstLaunching.toggle()
                    } label: {
                        Text("앱 시작하기")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width: 122, height: 46)
                            .background(Color.black)
                            .cornerRadius(25)
                    }
                    Spacer().frame(height: 100)
                }
            }
            //온보딩 1,2 페이지에서는 스킵 버튼
            else
            {
                HStack{
                    Spacer().frame(width: 32)
                    Button {
                        isFirstLaunching.toggle()
                    } label: {
                        Text("Skip")
                            .foregroundColor(.gray)
                            .font(.system(size: 24, weight: .bold))
                    }
                    Spacer().frame(height: 100)
                }
                
            }
        }
    }
}

//struct OnboardingTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingTabView(isFirstLaunching: <#T##Binding<Bool>#>)
//    }
//}
