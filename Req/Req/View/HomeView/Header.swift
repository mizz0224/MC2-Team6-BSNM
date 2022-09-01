//
//  Header.swift
//  Req
//
//  Created by 조성산 on 2022/06/16.
//

import SwiftUI

struct Header: View {
    @Binding var getisSearch: Bool//받아온 isSearch가 담길 변수
    @Binding var showCameraView: Bool
    @Binding var isRanking: Bool

    let menuFont: Font = Font.system(size: 20).bold()//메뉴 폰트 설정 SF Display Font Pro Bold, 20사이즈
    let iconColor: Color = Color.ReqWhite //아이콘컬러

    var body: some View {
        HStack(alignment: .center) {
            Spacer()
                .frameRatio(width: 32)

            VStack(spacing: 0) {
                Spacer()
                Image("ReqLogo")
                    .resizable()
                    .frameRatio(width: 72, height: 32)
                Spacer()
                    .frameRatio(height: 12)
            }

            Spacer()
            VStack(spacing: 0) {
                Spacer()
                Button(action: { isRanking.toggle() }) {
                    if isRanking {
                        Image(systemName: "crown.fill")
                            .font(menuFont)
                            .foregroundColor(iconColor)
                    } else {
                        Image(systemName: "crown")
                            .font(menuFont)
                            .foregroundColor(iconColor)
                    }
                }
                Spacer()
                    .frameRatio(height: 18)
            }//랭킹
            Spacer().frameRatio(width: 20)
            VStack(spacing: 0) {
                Spacer()
                Button(action: { self.getisSearch = true }) {
                    Image(systemName: "magnifyingglass")
                        .font(menuFont)
                        .foregroundColor(iconColor)
                }
                Spacer()
                    .frameRatio(height: 18)
            }//검색

            Spacer()
                .frameRatio(width: 20)
            
            VStack(spacing: 0) {
                Spacer()
                Button {
                    showCameraView = true
                } label: {
                    //TODO: 카메라 버튼 추가하기
                    Image(systemName: "camera.fill")
                        .font(menuFont)
                        .foregroundColor(iconColor)
                }
                    .fullScreenCover(isPresented: $showCameraView) {
                    FeedbackNameView(showCameraView: $showCameraView)
                        .preferredColorScheme(.light)
                }

                //뒤로가기 버튼
                Spacer()
                    .frameRatio(height: 18)
            }
            Spacer()
                .frameRatio(width: 32)
        }
    }
}
