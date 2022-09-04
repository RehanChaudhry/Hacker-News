//
//  ContentView.swift
//  HackerNews
//
//  Created by Rehan Chaudhry on 26/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView{
            List(networkManager.posts) {
                
                posts in
                
                NavigationLink(destination: DetailView(url: posts.url)) {
                    
                    HStack {
                        Text(String(posts.points))
                        Text(posts.title)
                    }
                }
            }
            
            .navigationBarTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.fetchAPi()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .edgesIgnoringSafeArea(.all)
    }
}
