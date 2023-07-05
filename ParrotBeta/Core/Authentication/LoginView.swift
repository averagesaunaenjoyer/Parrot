//
//  LoginView.swift
//  ParrotBeta
//
//  Created by Serafin dela Paz on 6/29/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        NavigationStack {
            
            Spacer()
            // Logo
            Image("Parrot")
                .resizable()
                .frame(width: 250, height: 250)
                .padding()
            // Login Info
            VStack {
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }
            
            // Forgot Password Button (TODO)
            Button {
                print("Placeholder")
            } label: {
                Text("Forgot password?")
                    .foregroundColor(.green)
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.top)
                    .padding(.trailing, 28)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)

            // Login Button (TODO)
            Button(action: {
                
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: UIScreen.main.bounds.width - 35, height: 50)
                        .foregroundColor(.green)
                        .padding(.vertical, 5)
                    Text("Login")
                        .foregroundColor(.white)
                }
            }

            // "Or" Divider
            HStack {
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    .foregroundColor(.gray)
                
                Text("OR")
                    .font(.footnote)
                    .foregroundColor(.gray)
                
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    .foregroundColor(.gray)
            }
                .padding(.vertical, 5)
            
            // Google Option
            Button(action: {
                // Placeholder
            }) {
                HStack {
                    Image("Google")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Text("Continue with Google")
                        .foregroundColor(.black)
                }
                .frame(width: UIScreen.main.bounds.width - 60)
                .padding(10)
                .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color(.systemGray3), lineWidth: 1)
                    )
            }
            
            Spacer()
            
            Divider()
            
            NavigationLink {
                RegistrationView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Don't have an account?")
                    .foregroundColor(.green)
                
                Text("Sign Up")
                    .foregroundColor(.green)
                    .fontWeight(.semibold)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
