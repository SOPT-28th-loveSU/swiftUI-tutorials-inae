//
//  FilterPickerView.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/04.
//

import SwiftUI

struct FilterPickerView: View {
    @State
    private var filteredValue = School.elementary
    private var friendArr: [MyFriend] = [MyFriend]()
    
    enum School: String, CaseIterable {
        case elementary = "초등학교"
        case middle = "중학교"
        case high = "고등학교"
    }
    
    struct MyFriend: Identifiable, Hashable {
        var id = UUID()
        var name: String
        var school: School
    }
    
    init() {
        for i in 1...20 {
            friendArr.append(MyFriend(name: "친구 \(i)", school: School.allCases.randomElement()!))
        }
    }
    
    var body: some View {
        
        VStack {
            Text("선택된 필터 : \(filteredValue.rawValue)")
            Picker("학교", selection: $filteredValue) {
                Text(School.elementary.rawValue).tag(School.elementary)
                Text(School.middle.rawValue).tag(School.middle)
                Text(School.high.rawValue).tag(School.high)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            List {
                ForEach(friendArr.filter({ (MyFriend) -> Bool in
                    MyFriend.school == filteredValue
                }), id: \.self) { item in
                    HStack {
                        Text("\(item.name)")
                        Text("\(item.school.rawValue)")
                    }
                }
            }

        }
        
    }
}

struct FilterPickerView_Previews: PreviewProvider {
    static var previews: some View {
        FilterPickerView()
    }
}
