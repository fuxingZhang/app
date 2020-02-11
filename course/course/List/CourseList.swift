//
//  CourseList.swift
//  course
//
//  Created by 张复星 on 2020/2/11.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI

struct CourseList: View {
    var body: some View {
        ScrollView {
            Text("Hello, World!")
                .background(Color.white)
        }
        .navigationBarTitle(Text("课程管理"))
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}
