//
//  Home.swift
//  course
//
//  Created by 张复星 on 2020/2/10.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showingProfile = false
    @EnvironmentObject var userData: UserData
    @State var barHidden = true
    
    var profileButton: some View {
        Button(action: { self.showingProfile.toggle() }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("User Profile"))
                .padding(0)
        }
    }
    
    var settingButton: some View {
        Button(action: { self.showingProfile.toggle() }) {
            Image(systemName: "gear")
                .imageScale(.large)
                .accessibility(label: Text("Setting"))
                .padding(0)
        }
    }
    
    // one
    //    var body: some View {
    //        NavigationView {
    //            ScrollView {
    //                HStack {
    //                    Text("本周有6节课未完成")
    //                        .foregroundColor(.gray)
    //                    Spacer()
    //                }
    //            }
    //            .padding(20)
    ////            .navigationBarTitle(Text("Course"), displayMode: .inline)
    //            .navigationBarTitle(Text("加油！宝贝"))
    ////            .navigationViewStyle(DoubleColumnNavigationViewStyle())
    //            .navigationBarBackButtonHidden(false)
    //            .navigationBarItems(leading: settingButton,trailing: profileButton)
    //            .sheet(isPresented: $showingProfile) {
    //                ProfileHost()
    //                    .environmentObject(self.userData)
    //            }
    //        }
    //    }
    
    // two
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    //                    Color.purple.edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        HStack {
                            profileButton
                            
                            Spacer()
                        }
                        
                        HStack {
                            Text("加油！宝贝")
                                .font(.largeTitle)
                            Spacer()
                        }
                        
                        HStack {
                            Text("本周有6节课未完成")
                                .foregroundColor(.gray)
                            Spacer()
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                    .background(Color.red)
                }
                .background(Color.white)
                
                
                NavigationLink(destination: CourseList()) {
                    Text("hi")
                }
            }
            .padding(0)
            .navigationBarTitle(Text(""))
            .navigationBarHidden(barHidden)
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environmentObject(self.userData)
            }
            .onAppear(perform: {
                self.barHidden = true
            })
            .onDisappear() {
                self.barHidden = false
            }
            //            .background(Color.orange.edgesIgnoringSafeArea(.all))
            //            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
    }
}
