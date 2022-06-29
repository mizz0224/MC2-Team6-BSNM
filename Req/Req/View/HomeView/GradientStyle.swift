//
//  GradientStyle.swift
//  Req
//
//  Created by Seyoung Choi on 2022/06/15.
//

import SwiftUI

struct GradientStyle: View {
    let textString : String
    var systemInfo = utsname()
    
    var body: some View {
        VStack{
            Text(textString)
                .font(.system(size: fontDeviceSize, weight: .bold))
                .overlay{
                    LinearGradient(
                        colors: [Color.DarkGrey, Color.ReqBlack],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                    .mask(
                        Text(textString)
                            .font(.system(size: fontDeviceSize, weight: .bold))
                    )
                }
        }
    }
    
}

struct GradientStyle2: View {
    let textString : String
    var body: some View{
        Text(textString)
            .font(.system(size: fontDeviceSize, weight: .bold))
            .overlay{
                LinearGradient(
                    colors: [Color.ReqGradientBlue, Color.ReqPurple],
                    startPoint: .leading,
                    endPoint: .trailing
                )
                .mask(
                    Text(textString)
                        .font(.system(size: fontDeviceSize, weight: .bold))
                )
            }
    }
}

struct GradientStyle3: View {
    let textString : String
    var body: some View{
        Text(textString)
            .font(.system(size: fontShadowSize, weight: .bold))
            .overlay{
                LinearGradient(
                    colors: [Color.ReqPurple.opacity(0.1), Color.ReqPurple.opacity(0)],
                    startPoint: .leading,
                    endPoint: .trailing
                )
                .mask(
                    Text(textString)
                        .font(.system(size: fontShadowSize, weight: .bold))
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
