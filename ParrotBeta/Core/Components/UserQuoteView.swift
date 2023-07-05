//
//  UserQuoteView.swift
//  ParrotBeta
//
//  Created by Serafin dela Paz on 6/30/23.
//

import SwiftUI

struct UserQuoteView: View {
    @State private var isUpvoted = false
    @State private var isBookmarked = false
    
    var body: some View {
        
        VStack {
            
            // Heading
            HStack {
                
                // Person X
                HStack {
                    Image("Oldhead")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .cornerRadius(50)
                    
                    Text("Wooden Oldhead")
                        .font(.callout)
                        .fontWeight(.semibold)
                    
                    Text("was quoted by")
                        .font(.caption)
                }
                
                // Person Y
//                Image("Gymrat")
//                    .resizable()
//                    .frame(width: 40, height: 40)
//                    .cornerRadius(50)
                
                Text("Gym Newbie")
                    .font(.caption)
                    .fontWeight(.semibold)
            }
            .padding(.vertical, 5)
            
            VStack {
                
                HStack {
                    Text("\"")
                        .font(.largeTitle)
                        .frame(alignment: .leading)
                        .padding(.leading, 10)
                        .italic()
                    Spacer()
                }
                
                Text("You looking absolutely massive my guy, no cap I'm tryna be like you zaddy🤤")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                    .padding(.vertical, -30)
                
                HStack {
                    Spacer()
                    Text("\"")
                        .font(.largeTitle)
                        .frame(alignment: .trailing)
                        .padding(.trailing, 10)
                        .italic()
                }
            }
            
            HStack {
                
                Button {
                    isBookmarked.toggle()
                } label: {
                    if isBookmarked {
                        Image(systemName: "chevron.up")
                            .padding(.horizontal)
                            .foregroundColor(.green)
                            .fontWeight(.semibold)
                    } else {
                        Image(systemName: "chevron.up")
                            .padding(.horizontal)
                            .foregroundColor(.black)
                    }
                }
                .padding(.horizontal)
                
                Image(systemName: "bubble.right")
                    .padding(.horizontal)

                Button {
                    isUpvoted.toggle()
                } label: {
                    if isUpvoted {
                        Image(systemName: "bookmark.fill")
                            .padding(.horizontal)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                    } else {
                        Image(systemName: "bookmark")
                            .padding(.horizontal)
                            .foregroundColor(.black)
                    }
                }
                .padding(.horizontal)
                
                HStack {
                    Text("🤣")
                    Text("😡")
                        .offset(x: -19)
                    Text("💀")
                        .offset(x: -39)
                }
            }
            
            Divider()
        }
    }
}

struct UserQuoteView_Previews: PreviewProvider {
    static var previews: some View {
        UserQuoteView()
    }
}
