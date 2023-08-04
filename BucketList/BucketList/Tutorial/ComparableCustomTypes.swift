//
//  ComparableCustomTypes.swift
//  BucketList
//
//  Created by Brandon Johns on 8/1/23.
//

import SwiftUI


struct User: Identifiable, Comparable {
    let id = UUID()
    let firstName: String
    let lastName: String
    
    static func <(lhs: User, rhs: User) -> Bool {
        lhs.firstName < rhs.firstName
    }
}

struct ComparableCustomTypes: View {
    
    let users = [
    User(firstName: "Brandon", lastName: "Johns"),
    User(firstName: "Kristi", lastName: "Barberick"),
    User(firstName: "Ellie", lastName: "Dog")
    
    ].sorted()
    
    var body: some View {
        List(users) { user in
            Text("\(user.firstName) \(user.lastName)")
        }
    }
}

struct ComparableCustomTypes_Previews: PreviewProvider {
    static var previews: some View {
        ComparableCustomTypes()
    }
}
