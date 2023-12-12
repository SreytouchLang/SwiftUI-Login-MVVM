//
//  HomeViewModel.swift
//  SwiftUI-Login-MVVM
//
//  Created by Sreytouch(Jessica) on 12/11/23.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    @Published var welcomeMessage = "Welcome to the Home Page!"

    func logout() {
        // Additional logout logic can be added here
    }
}
