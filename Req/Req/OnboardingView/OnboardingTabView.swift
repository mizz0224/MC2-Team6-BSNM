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
                // 페이지 1: 앱 소개
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
                
                // 페이지 3: 읽기 페이지 안내 + 온보딩 완료
                OnboardingLastPageView(
                    title: "Take",
                    title2: "A Picture",
                    imageName: "온보딩이미지1",
                    subtitle: "그 날의 패션을 지인을",
                    subtitle2: "통해 기록하세요",
                    isFirstLaunching: $isFirstLaunching
                )
                .tag(3)
            }
            .tabViewStyle(PageTabViewStyle())
            
            
            if pageIndex == 3
            {
                HStack{
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
            
            else
            {
                HStack{
                    Spacer().frame(width: 32)
                    Button {
                        
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
