//
//  File.swift
//  SwiftUI-Login-MVVM
//
//  Created by Sreytouch(Jessica) on 12/11/23.
//

import Foundation
import Combine

class LoginViewModel: ObservableObject {
    @Published var username = ""
    @Published var password = ""
    @Published var isLoggedIn = false

    private var cancellables: Set<AnyCancellable> = []

    func login() {
        // Replace this with your actual login logic
        if username == "yourUsername" && password == "yourPassword" {
            isLoggedIn = true
        }
    }
}
