//
//  GradientStyle.swift
//  Req
//
//  Created by Seyoung Choi on 2022/06/15.
//

import SwiftUI

struct GradientStyle: View {
    let textString : String
    var body: some View {
        VStack{
            Text(textString)
                .font(.system(size: 60, weight: .bold))
                .overlay{
                    LinearGradient(
                        colors: [Color.gray, Color.black],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                    .mask(
                        Text(textString)
                            .font(.system(size: 60, weight: .bold))
                    )
                }
        }
    }
    
}
struct GradientStyle2: View {
    let textString : String
    var body: some View{
        Text(textString)
            .font(.system(size: 60, weight: .bold))
            .overlay{
                LinearGradient(
                    colors: [Color.blue, Color.purple],
                    startPoint: .leading,
                    endPoint: .trailing
                )
                .mask(
                    Text(textString)
                        .font(.system(size: 60, weight: .bold))
                )
            }
    }
}

struct GradientStyle3: View {
    let textString : String
    var body: some View{
        Text(textString)
            .font(.system(size: 76, weight: .bold))
            .overlay{
                LinearGradient(
                    colors: [Color.purple.opacity(0.15), Color.purple.opacity(0)],
                    startPoint: .leading,
                    endPoint: .trailing
                )
                .mask(
                    Text(textString)
                        .font(.system(size: 76, weight: .bold))
                )
            }
    }
}

struct GradientStyle_Previews: PreviewProvider {
    static var previews: some View {
        GradientStyle(textString: "dongle")
        GradientStyle2(textString: "Dongle")
        GradientStyle3(textString: "DDongle")
    }
}
