//
//  KeyboardControl.swift
//  Req
//
//  Created by 이재웅 on 2022/06/14.
//

import Foundation
import UIKit

class KeyboardHeightHelper: ObservableObject {
    @Published var keyboardHeight: CGFloat = 0
    
    private func listenForKeyboardNotifications() {
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardDidShowNotification,
                                               object: nil,
                                               queue: .main) { (notification) in
                                                guard let userInfo = notification.userInfo,
                                                    let keyboardRect = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
                                                
                                                self.keyboardHeight = keyboardRect.height
        }
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardDidHideNotification,
                                               object: nil,
                                               queue: .main) { (notification) in
                                                self.keyboardHeight = 0
        }
    }
    
    init() {
        self.listenForKeyboardNotifications()
    }
}
//출처 : https://programmingwithswift.com/get-keyboard-height-swiftui/
