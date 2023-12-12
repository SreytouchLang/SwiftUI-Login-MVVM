//
//  HomeView.swift
//  SwiftUI-Login-MVVM
//
//  Created by Sreytouch(Jessica) on 12/11/23.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject private var viewModel = HomeViewModel()

    var body: some View {
        NavigationView {
            VStack {
                Text(viewModel.welcomeMessage)
                    .padding()

                Button(action: {
                    viewModel.logout()
                }) {
                    Text("Logout")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()

                Spacer()
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}
