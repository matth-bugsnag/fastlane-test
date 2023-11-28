//
//  fastlane_testApp.swift
//  fastlane-test
//
//  Created by Matthew Howells on 26/01/2023.
//

import SwiftUI
import Bugsnag

@main
struct fastlane_testApp: App {
    init() {
        let config = BugsnagConfiguration.loadConfig()

        config.appVersion = "11.0.0"
        config.releaseStage = "Production"
    
        Bugsnag.start()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
