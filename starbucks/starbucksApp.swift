//
//  starbucksApp.swift
//  starbucks
//
//  Created by EDSON SANTOS on 03/04/2024.
//

import SwiftUI

@main
struct starbucksApp: App {
    
    //Sharing my viewModel for all my application
    @StateObject private var viewModel = HomeViewModel()
    
    @State private var showLaunchView: Bool = true
    
    init(){
        UINavigationBar.appearance()
            .largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        
        UINavigationBar.appearance()
            .titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().tintColor = UIColor(Color.theme.accent)
        UITableView.appearance().backgroundColor = UIColor.clear
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                NavigationView{
                    HomeView(vm: viewModel)
                        .navigationBarHidden(true)
                }
                .navigationViewStyle(StackNavigationViewStyle())
                .environmentObject(viewModel)
                
                ZStack{
                    if showLaunchView {
                        LaunchView(viewModel: LaunchViewModel(), showLaunchView: $showLaunchView)
                            .transition(.move(edge: .leading))
                    }
                }
                .zIndex(2.0)
            }
        }
    }
}
