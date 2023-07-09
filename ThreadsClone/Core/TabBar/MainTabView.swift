//
//  MainTabView.swift
//  ThreadsClone
//
//  Created by Lucas Newlands on 07/07/23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0

    var body: some View {
                TabView(selection: $selectedIndex) {
                    FeedView()
                        .onAppear {
                            selectedIndex = 0
                        }
                        .tabItem {
                            Image(systemName: "house.fill")
                        }
                        .tag(0)
                    
                    SearchView()
                        .onAppear {
                            selectedIndex = 1
                        }
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                        }
                        .tag(1)

                    
                    UploadPostView()
                        .onAppear {
                            selectedIndex = 2
                        }
                        .tabItem {
                            Image(systemName: "bubble.left")
                        }
                        .tag(2)

                    
                    Text("Notifications")
                        .onAppear {
                            selectedIndex = 3
                        }
                        .tabItem {
                            Image(systemName: "heart")
                        }
                        .tag(3)

                    
                    ProfileView()
                        .onAppear {
                            selectedIndex = 4
                        }
                        .tabItem {
                            Image(systemName: "person.fill")
                        }
                        .tag(4)

                }
                .accentColor(.black)
            }

        }

        struct MainTabView_Previews: PreviewProvider {
            static var previews: some View {
                MainTabView()
            }
}

#Preview {
    MainTabView()
}
