//
//  ReqApp.swift
//  Req
//
//  Created by 이재웅 on 2022/06/10.
//

import SwiftUI

@main
struct ReqApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            OnboardingCheckView()
//            HomeView()
//            DetailView(getFeedback: testData)
        }
    }
}
