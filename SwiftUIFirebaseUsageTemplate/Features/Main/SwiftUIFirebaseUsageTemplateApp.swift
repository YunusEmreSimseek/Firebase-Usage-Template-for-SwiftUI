//
//  SwiftUIFirebaseUsageTemplateApp.swift
//  SwiftUIFirebaseUsageTemplate
//
//  Created by Emre Simsek on 16.08.2024.
//

import SwiftUI

@main
struct SwiftUIFirebaseUsageTemplateApp: App {

  // register app delegate for Firebase setup
  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}
