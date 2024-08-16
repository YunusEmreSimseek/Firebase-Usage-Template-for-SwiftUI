//
//  SwiftUIFirebaseUsageTemplateTests.swift
//  SwiftUIFirebaseUsageTemplateTests
//
//  Created by Emre Simsek on 16.08.2024.
//

import XCTest

@testable import SwiftUIFirebaseUsageTemplate

final class SwiftUIFirebaseUsageTemplateTests: XCTestCase {

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  func testExample() throws {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    // Any test you write for XCTest can be annotated as throws and async.
    // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
    // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
  }

  func testPerformanceExample() throws {
    // This is an example of a performance test case.
    measure {
      // Put the code you want to measure the time of here.
    }
  }

  /// Test for creating item in collection from Firestore
  func testFirestoreServiceCreateItem() async throws {

    // Given
    let firestoreService: IFirestoreService = FirestoreService()

    // Item
    let item: UserModel = UserModel(
      id: "randomid", email: "test@test.com", password: "123456")

    // When
    let result = await firestoreService.createItem(item: item)

    // Then
    XCTAssertEqual(result, true)

  }
  /// Test for fetching  item in collection from Firestore
  func testFirestoreServiceFetchItem() async throws {

    // Given
    let firestoreService: IFirestoreService = FirestoreService()

    // Item
    let docId = "randomid"

    // When
    let item: UserModel? = await firestoreService.fetchItem(docId: docId)
    print("item: \(item.debugDescription)")

    // Then
    XCTAssertNotNil(item)
  }

  /// Test for fetching all items in collection from Firestore
  func testFirestoreServiceFetchAllItems() async throws {

    // Given
    let firestoreService: IFirestoreService = FirestoreService()

    // When
    let items: [UserModel]? = await firestoreService.fetchAllItems()
    print("items: \(items.debugDescription)")

    // Then
    XCTAssertNotNil(items)
  }

  /// Test for editing item in collection from Firestore
  func testFirestoreServiceEditItem() async throws {

    // Given
    let firestoreService: IFirestoreService = FirestoreService()

    // Item
    let item: UserModel = UserModel(
      id: "randomid", email: "editTest@test.com", password: "123456")

    // When
    let result = await firestoreService.editItem(item: item)
    print("result: \(result)")

    // Then
    XCTAssertTrue(result)
  }

  /// Test for deleting item from Firestore
  func testFirestoreServiceDeleteItem() async throws {

    // Given
    let firestoreService: IFirestoreService = FirestoreService()

    // Item
    let docId = "randomid"

    // When
    let result = await firestoreService.deleteItem(docId: docId)
    print("result: \(result)")

    // Then
    XCTAssertTrue(result)
  }
  /// Test for signing up with email and password for Firebase Auth
  func testAuthServiceSignUp() async throws {

    // Given
    let authService: IAuthService = AuthService()

    // Items
    let email = "test@test.com"
    let password = "123456"

    // When
    let result = await authService.signUp(email: email, password: password)

    // Then
    XCTAssertTrue(result)
  }

  /// Test for signing in with email and password for Firebase Auth
  func testAuthServiceSignIn() async throws {

    // Given
    let authService: IAuthService = AuthService()

    // Items
    let email = "test@test.com"
    let password = "123456"

    // When
    let result = await authService.signIn(email: email, password: password)

    // Then
    XCTAssertTrue(result)

  }

  /// Test for signing out for Firebase Auth
  func testAuthServiceSignOut() throws {

    // Given
    let authService: IAuthService = AuthService()

    // When
    let result = authService.signOut()

    // Then
    XCTAssertTrue(result)

  }

  /// Test for currenrt user authentication for Firebase Auth
  func testAuthServiceCheckAuthUser() throws {

    // Given
    let authService: IAuthService = AuthService()

    // When
    let result = authService.checkAuthUser()

    // Then
    XCTAssertFalse(result)

  }

}
