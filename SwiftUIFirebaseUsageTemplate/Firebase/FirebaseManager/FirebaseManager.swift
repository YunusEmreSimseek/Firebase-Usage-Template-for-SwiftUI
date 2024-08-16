//
//  FirebaseManager.swift
//  SwiftUIFirebaseUsageTemplate
//
//  Created by Emre Simsek on 16.08.2024.
//

import FirebaseCore
import SwiftUI

/// Firebase manager class
final class AppDelegate: NSObject, UIApplicationDelegate {

  func application(
    _ application: UIApplication,

    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
  ) -> Bool {

    FirebaseApp.configure()

    return true

  }

}
