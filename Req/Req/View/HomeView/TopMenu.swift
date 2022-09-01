//
//  TopMenu.swift
//  Req
//
//  Created by 조성산 on 2022/06/17.
//

import SwiftUI

struct TopMenu: View {
    @State var getisSearch = false
    @Binding var searchText: String
    @Binding var isSearching: Bool
    @Binding var showResults: Bool
    @Binding var loadSearch: Bool
    @Binding var showCameraView: Bool
    @Binding var isRanking: Bool
    
    let reqBlack: Color = Color(red: 13 / 255, green: 13 / 255, blue: 14 / 255)//reqBlack : 0d0de
    let reqWhite: Color = Color(red: 251 / 255, green: 251 / 255, blue: 255 / 255)//reqWhite : fdfdff
    var body: some View {
        VStack(spacing: 0) {
            if getisSearch {
                SearchBar(getisSearch: $getisSearch, searchText: $searchText, isSearching: $isSearching, showResults: $showResults)
            } else {
                Header(getisSearch: $getisSearch, showCameraView: $showCameraView, isRanking: $isRanking)
            }
        }
            .background(reqBlack)
            .frameRatio(height: 47)
    }
}

