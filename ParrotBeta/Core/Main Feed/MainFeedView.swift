//
//  MainFeedView.swift
//  ParrotBeta
//
//  Created by Serafin dela Paz on 6/30/23.
//

import SwiftUI

struct MainFeedView: View {
    @State private var title = "All Flocks"
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                ScrollView {
                    LazyVStack {
                        ForEach(1...20, id: \.self) { _ in
                            UserQuoteView()
                        }
                    }
                }
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(.green, for: .automatic)
                .toolbarColorScheme(.dark, for: .automatic)
                .toolbarTitleMenu {
                    Button("All Flocks") {
                        title = "All Flocks"
                    }
                    
                    Button("Flock 1") {
                        title = "Flock 1"
                    }
                    
                    Button("Flock 2") {
                        title = "Flock 2"
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            
                        } label: {
                            Image("Parrot")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .cornerRadius(50)
                        }
                    }
                }
            }
        }
    }
}

struct MainFeedView_Previews: PreviewProvider {
    static var previews: some View {
        MainFeedView()
    }
}
