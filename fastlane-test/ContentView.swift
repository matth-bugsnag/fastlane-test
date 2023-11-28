//
//  ContentView.swift
//  fastlane-test
//
//  Created by Matthew Howells on 26/01/2023.
//

import SwiftUI
import Bugsnag

struct ContentView: View {
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Notify")) {
                    Button(action: callErrorFunction) {
                        Text("Basic Notify Handled")
                    }
                    Button(action: crashApp) {
                        Text("Crashing using fatalError")
                    }
                }
            }
        }
        .padding()
    }
}

func callErrorFunction() {
    notifyBugsnag()
}

func notifyBugsnag() {
    do {
        try FileManager.default.removeItem(atPath:"//invalid/file")
    } catch {
        Bugsnag.notifyError(error);
    }
}

func crashApp() {
    fatalError("crashing app with fatal error")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
