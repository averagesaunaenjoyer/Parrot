//
//  RegistrationView.swift
//  ParrotBeta
//
//  Created by Serafin dela Paz on 6/30/23.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    @State private var isPasswordVisible = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            // Logo
            Image("Parrot")
                .resizable()
                .frame(width: 250, height: 250)
                .padding()
            
            // Registration Info
            VStack {
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("Enter your full name", text: $fullName)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                ZStack(alignment: .trailing) {
                    if isPasswordVisible {
                        TextField("Choose your password", text: $password)
                            .font(.subheadline)
                            .padding(12)
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .padding(.horizontal, 24)
                    } else {
                        SecureField("Choose your password", text: $password)
                            .font(.subheadline)
                            .padding(12)
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .padding(.horizontal, 24)
                    }
                    
                    Button(action: {
                        isPasswordVisible.toggle()
                    }) {
                        Image(systemName: isPasswordVisible ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(Color(.systemGray2))
                            .scaleEffect(0.9)
                    }
                    .padding(.trailing, 30)
                    .padding(.vertical, 5)
                }
            }
            .padding(.vertical, 12)
            
            // Sign Up Button (TODO)
            Button(action: {
                
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: UIScreen.main.bounds.width - 35, height: 50)
                        .foregroundColor(.green)
                        .padding(.vertical, 5)
                    Text("Sign Up")
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
                            .stroke(Color(.systemGray), lineWidth: 1)
                    )
            }
            
            Spacer()
            
            Divider()
            
            // Back to Login View
            Button {
                dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                        .foregroundColor(.green)
                    Text("Sign In")
                        .foregroundColor(.green)
                        .fontWeight(.semibold)
                }
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
