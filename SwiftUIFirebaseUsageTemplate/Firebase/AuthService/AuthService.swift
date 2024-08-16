//
//  AuthService.swift
//  SwiftUIFirebaseUsageTemplate
//
//  Created by Emre Simsek on 16.08.2024.
//

import FirebaseAuth

/// Authentication service protocol
protocol IAuthService {

  /// Method for signing up with email and password
  func signUp(email: String, password: String) async -> Bool

  /// Method for signing in with email and password
  func signIn(email: String, password: String) async -> Bool

  /// Method for signing out
  func signOut() -> Bool

  /// Method for checking if user is authenticated
  func checkAuthUser() -> Bool
}

extension IAuthService {

  var db: Auth {
    return Auth.auth()
  }

}

/// Example authentication service class
final class AuthService: IAuthService {

  func signUp(email: String, password: String) async -> Bool {

    do {
      try await db.createUser(withEmail: email, password: password)
      return true
    } catch {
      print("Error while creating user: \(error)")
      return false
    }
  }

  func signIn(email: String, password: String) async -> Bool {
    do {
      let response = try await db.signIn(withEmail: email, password: password)
      return true
    } catch {
      print("Error while signing in: \(error)")
      return false
    }
  }

  func signOut() -> Bool {
    do {
      try db.signOut()
      return true
    } catch {
      print("Error while signing out: \(error)")
      return false
    }
  }

  func checkAuthUser() -> Bool {
    if db.currentUser != nil {
      return true
    } else {
      return false
    }
  }
}
