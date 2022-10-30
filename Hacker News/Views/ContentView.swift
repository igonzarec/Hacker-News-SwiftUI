//
//  ContentView.swift
//  Hacker News
//
//  Created by Ivan Gonzalez on 29/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    //You set it like this as a listener. We subscribe to the updates of the network manager.
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear { //this is like viewDidLoad
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola"),
//]
