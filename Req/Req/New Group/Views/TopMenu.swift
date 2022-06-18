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
    
    var body: some View {
        VStack(spacing:0){
            if getisSearch {
                SearchBar(getisSearch: $getisSearch, searchText: $searchText, isSearching: $isSearching, showResults: $showResults)
            }   else    {
                Header(getisSearch: $getisSearch)
            }
        }.background(Color.black).frame(height:52)
    }
}

