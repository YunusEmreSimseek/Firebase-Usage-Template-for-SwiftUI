//
//  UserModel.swift
//  SwiftUIFirebaseUsageTemplate
//
//  Created by Emre Simsek on 16.08.2024.
//

import Foundation

/// Example user model
struct UserModel: Identifiable, Codable {

  let id: String?
  let email: String?
  let password: String?

}
