//
//  Face&TouchIDwithSwiftUI.swift
//  BucketList
//
//  Created by Brandon Johns on 8/2/23.
//

import LocalAuthentication
import SwiftUI


struct Face_TouchIDwithSwiftUI: View {
    
    @State private var isUnlocked = false
    
    
    var body: some View {
        VStack {
            if isUnlocked {
                Text("Unlocked")
            }
            else {
                Text("Locked")
            }
        }
        .onAppear(perform: authenticate)
    }
    
    func authenticate() {
        let context = LAContext()
        var error: NSError?

        // check whether biometric authentication is possible
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            // it's possible, so go ahead and use it
            let reason = "We need to unlock your data."

            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                // authentication has now completed
                if success {
                    isUnlocked = true
                } else {
                    // there was a problem
                }
            }
        } else {
            // no biometrics
        }
    }
}

struct Face_TouchIDwithSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        Face_TouchIDwithSwiftUI()
    }
}
