//
//  Home.swift
//  course
//
//  Created by 张复星 on 2020/2/10.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct Home: View {
    @State var showingProfile = false
//    @EnvironmentObject var userData: UserData
    
    var profileButton: some View {
        Button(action: { self.showingProfile.toggle() }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("User Profile"))
                .padding()
        }
    }

    var body: some View {
        NavigationView {
            List {
                Text("hello")
            }
            .navigationBarTitle(Text("Featured"))
            .navigationBarItems(trailing: profileButton)
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
//                    .environmentObject(self.userData)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
//            .environmentObject(UserData())
    }
}
