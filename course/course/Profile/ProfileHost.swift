//
//  ProfileHost.swift
//  course
//
//  Created by 张复星 on 2020/2/10.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Text("设置")
                        .font(.system(size: 20))
                    //                        .bold()
                }
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                        .imageScale(.large)
                    }
                    
                    Spacer()
                }
            }
            .padding(EdgeInsets(top: 20, leading: 20, bottom: 10, trailing: 20))
            
            List {
                Section(header: Text("数据同步")){
                    Text("开启同步")
                }
                
                Section(header: Text("消息通知")){
                    Text("开启通知")
                    Text("课程结束前通知我")
                    Text("提前10分钟提醒")
                }
                
                Section(header: Text("支持我们")){
                    Text("在App Store中给我们评分")
                    Text("分享给好友")
                    Text("加入微信群反馈问题")
                }
                
                Section(header: Text("其他")){
                    Text("隐私条款和使用协议")
                    Text("关于我们")
                }
            }
            .listStyle(GroupedListStyle())
        }
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
