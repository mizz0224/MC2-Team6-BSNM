//
//  OnboardingTabView.swift
//  Req
//
//  Created by Seyoung Choi on 2022/06/14.
//

import SwiftUI

struct OnboardingTabView: View {
    @Binding var isFirstLaunching: Bool
    
    var body: some View {
        TabView {
            // 페이지 1: 앱 소개
            OnboardingPageView(
                title: "Take",
                title2: "A Picture",
                imageName: "온보딩이미지1",
                subtitle: "그 날의 패션을 지인을",
                subtitle2: "통해 기록하세요"
            )
            
            // 페이지 3: 읽기 페이지 안내 + 온보딩 완료
            OnboardingLastPageView(
                title: "Take",
                title2: "A Picture",
                imageName: "온보딩이미지1",
                subtitle: "그 날의 패션을 지인을",
                subtitle2: "통해 기록하세요",
                isFirstLaunching: $isFirstLaunching
            )
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

//struct OnboardingTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingTabView(isFirstLaunching: <#T##Binding<Bool>#>)
//    }
//}
