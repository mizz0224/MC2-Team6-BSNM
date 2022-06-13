//
//  ContentView.swift
//
//
//  Created by heojaenyeong on 2022/06/12.
//

import SwiftUI

struct TopMenuView : View {
    let MenuFont : Font = Font.system(size:20).bold()
    var body : some View {
        VStack(alignment: .center, spacing: 0){
            HStack(spacing:0) {
                Button(action:{}) {
                    Image(systemName : "chevron.backward")
                        .font(MenuFont)
                        .frame(height: 24)
                        .foregroundColor(Color.black)
                        .padding(EdgeInsets(top :10, leading : 16, bottom :18, trailing : 0))
                }
                Spacer()
                Button(action:{}) {
                    Image(systemName : "trash.fill")
                        .font(MenuFont)
                        .frame(height: 24)
                        .foregroundColor(Color.black)
                        .padding(EdgeInsets(top : 10, leading : 0, bottom : 18, trailing : 16))
                    
                }
            }
        }.frame(height: 52)
    }//TopMenuView
    struct TopMenuView_Previews : PreviewProvider {
        static var previews : some View {
            TopMenuView()
        }
    }
    
}


