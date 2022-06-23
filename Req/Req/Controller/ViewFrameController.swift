//
//  ViewFrameController.swift
//  Req
//
//  Created by Choi Inho on 2022/06/23.
//

import Foundation
import SwiftUI

extension View {
    @ViewBuilder
    func frameRatio(width: CGFloat? = nil, height: CGFloat? = nil, alignment: Alignment? = nil) -> some View {
        if alignment != nil {
            if width != nil && height != nil {
                self.frame(
                    width: UIScreen.main.bounds.width * width! / CGFloat(390),
                    height: UIScreen.main.bounds.height * height! / CGFloat(844),
                    alignment: alignment!
                )
            } else if width == nil {
                self.frame(height: UIScreen.main.bounds.height * height! / CGFloat(844), alignment: alignment!)
            } else if height == nil {
                self.frame(width: UIScreen.main.bounds.width * width! / CGFloat(390), alignment: alignment!)
            } else {
                self
            }
        } else {
            if width != nil && height != nil {
                self.frame(
                    width: UIScreen.main.bounds.width * width! / CGFloat(390),
                    height: UIScreen.main.bounds.height * height! / CGFloat(844)
                )
            } else if width == nil {
                self.frame(height: UIScreen.main.bounds.height * height! / CGFloat(844))
            } else if height == nil {
                self.frame(width: UIScreen.main.bounds.width * width! / CGFloat(390))
            } else {
                self
            }
        }
    }

    @ViewBuilder
    func paddingRatio(_ edge: Edge.Set, _ size: CGFloat) -> some View {
        if edge == .leading || edge == .trailing {
            self.padding(edge, UIScreen.main.bounds.width * size / 390)
        } else if edge == .top || edge == .bottom {
            self.padding(edge, UIScreen.main.bounds.height * size / 844)
        } else {
            self.padding(edge)
        }
    }

    @ViewBuilder
    func paddingRatio(_ length: CGFloat? = nil) -> some View {
        if length != nil {
            self.padding(length!)
        } else {
            self.padding()
        }
    }

    @ViewBuilder
    func paddingRatio(_ insets: EdgeInsets) -> some View {
        self.padding(insets)
    }
}

