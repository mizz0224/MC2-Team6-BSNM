//
//  TopMenu.swift
//  Req
//
//  Created by 조성산 on 2022/06/17.
//

import SwiftUI

struct TopMenu: View {
//    @State var isSearch : Bool = false
    @State var searchText = ""
    @State var getisSearch = false
    @State var isSearching = false
    @State var showResults = false
    @State var loadSearch = false
    
    var body: some View {
        VStack(spacing:0){
            if getisSearch {
                SearchBar(searchText: $searchText, getisSearch: $getisSearch, isSearching: $isSearching, showResults: $showResults, loadSearch: $loadSearch)
            }   else    {
                Header(getisSearch: $getisSearch)
            }
        }.background(Color.black).frame(height:52)
    }
}

struct TopMenu_Previews: PreviewProvider {
    static var previews: some View {
        TopMenu()
    }
}
