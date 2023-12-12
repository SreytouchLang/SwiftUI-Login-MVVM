//
//  LoginView.swift
//  SwiftUI-Login-MVVM
//
//  Created by Sreytouch(Jessica) on 12/11/23.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject private var viewModel = LoginViewModel()

    var body: some View {
        NavigationView {
            VStack {
                TextField("Username", text: $viewModel.username)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                SecureField("Password", text: $viewModel.password)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Button(action: {
                    viewModel.login()
                }) {
                    Text("Login")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()

                NavigationLink(
                    destination: HomeView(),
                    isActive: $viewModel.isLoggedIn,
                    label: {
                        EmptyView()
                    }
                )
            }
            .padding()
            .navigationTitle("Login")
        }
    }
}

#Preview {
    LoginView()
}
