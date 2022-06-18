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
                Spacer().frame(width:8)
                
                HStack(spacing: 0 ) {
                    TextField("패션 아이템의 이름을 입력하세요", text: $searchText)
                        .padding(.leading, 24)
                }
                .frame(height:20)
                .padding(.horizontal)
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                .onTapGesture(perform: {
                    isSearching = true
                    showResults = true
                })
                .overlay (
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Spacer()
                        
                        Button(action: {searchText = ""}, label: {
                            Image(systemName: "xmark.circle.fill")
                                .padding(.vertical)
                                .foregroundColor(.gray)
                                .opacity(isSearching ? 1 : 0)
                        })
                    }
                    .padding(.horizontal, 32)
                    .foregroundColor(.gray)
                )
                
                Spacer()
                
                Button(action: {self.getisSearch = false}) {//홈으로 이동
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                }//뒤로가기 버튼
                
                Spacer().frame(width:32)
            }
            Spacer().frame(height:18)
        }
    }
    
}


