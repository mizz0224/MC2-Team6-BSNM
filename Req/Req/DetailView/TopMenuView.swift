//
//  ContentView.swift
//
//
//  Created by heojaenyeong on 2022/06/12.
//

import SwiftUI
struct TopMenuView : View {
    let MenuFont : Font = Font.system(size:20)
    var body : some View {
        HStack {
            Button(action:{}) {
                Image(systemName : "chevron.backward").font(MenuFont)
                    .padding(EdgeInsets(top : 0, leading : 6, bottom : 0, trailing :  0)).foregroundColor(Color.black)
                
            }
            
            Spacer()
            
            Button(action:{}) {
                Image(systemName : "trash.fill").font(MenuFont)
                    .padding(EdgeInsets(top : 0, leading : 0, bottom : 0, trailing : 17.5)).foregroundColor(Color.black)
            }
            
        }.frame(height:53)
    }//DetailView
    struct TopMenuView_Previews : PreviewProvider {
        static var previews : some View {
            TopMenuView()
        }
    }
    
}


