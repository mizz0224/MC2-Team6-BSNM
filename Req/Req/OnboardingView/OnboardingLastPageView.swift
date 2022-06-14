//
//  OnboardingLastPageView.swift
//  Req
//
//  Created by Seyoung Choi on 2022/06/14.
//

import SwiftUI

struct OnboardingLastPageView: View {
    let title: String
    let title2: String
    let imageName: String
    let subtitle: String
    let subtitle2: String
    
    @Binding var isFirstLaunching: Bool
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 60, weight: .bold))
                .offset(x: -101)
            Text(title2)
                .font(.system(size: 60, weight: .bold))
                .offset(x: -40)
            ZStack {
                Rectangle()
                    .offset(y: 100)
                    .frame(width: 390, height: 160)
                    .foregroundColor(Color.blue)
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 347)
            }
            Text(subtitle)
                .font(.system(size: 18, weight: .medium))
            Text(subtitle2)
                .font(.system(size: 18, weight: .medium))
            
            // 온보딩 완료 버튼.
            // AppStorage의 isFirstLaunching 값을 false로 바꾸기 때문에, 다음번에 앱을 실행할 때는 OnboardingTabView를 띄우지 않음.
            Button {
                isFirstLaunching.toggle()
            } label: {
                Text("앱 시작하기")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 150, height: 46)
                    .background(Color.black)
                    .cornerRadius(25)
            }
        }
    }
}

//struct OnboardingLastPageView_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingLastPageView
//        (title: "Take",
//         title2: "A Picture",
//         imageName: "온보딩이미지1",
//         subtitle: "그 날의 패션을 지인을",
//         subtitle2: "통해 기록하세요"
//        )
//    }
//}
