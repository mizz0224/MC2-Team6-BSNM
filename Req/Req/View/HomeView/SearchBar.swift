//
//  SearchBar.swift
//  Req
//
//  Created by 조성산 on 2022/06/15.
//

import SwiftUI

struct SearchBar: View {
    @Binding var getisSearch: Bool
    @Binding var searchText: String
    @Binding var isSearching: Bool
    @Binding var showResults: Bool

    var body: some View {

        VStack (spacing: 0) {
            Spacer()
            HStack(spacing: 0) {
                Spacer()
                    .frameRatio(width: 32)
                
                
                
                HStack(alignment: .center, spacing: 0) {
                    Image(systemName: "magnifyingglass")
                        .padding(.trailing, 4)
                    
                    TextField("패션 아이템의 이름을 입력하세요", text: $searchText)
                }
                .frameRatio(width: 260, height: 24)
                    .padding(.horizontal)
                    .foregroundColor(.gray)
                    .background(Color(red: 238 / 255, green: 238 / 255, blue: 238 / 255, opacity: 0.7))
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    .onTapGesture(perform: {
                    isSearching = true
                    showResults = true
                })

                Spacer()
                    .frameRatio(width: 5)

                Button(action: {
                    self.searchText = ""
                    self.getisSearch = false }) { //홈으로 이동
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                }//뒤로가기 버튼

                Spacer()
                    .frameRatio(width: 32)
            }
            Spacer()
                .frameRatio(height: 18)
        }
    }

}


