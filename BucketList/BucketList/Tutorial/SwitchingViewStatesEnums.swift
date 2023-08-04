//
//  SwitchingViewStatesEnums.swift
//  BucketList
//
//  Created by Brandon Johns on 8/1/23.
//

import SwiftUI

enum loadingstate {
    case loading, success, failed
}

struct LoadingView: View {
    var body: some View {
        Text("Loading...")
    }
}

struct SuccessView: View {
    var body: some View {
        Text("Success!")
    }
}

struct FailedView: View {
    var body: some View {
        Text("Failed.")
    }
}


struct SwitchingViewStatesEnums: View {
    
    var loadingState = loadingstate.loading
    
    
    var body: some View {
        if loadingState == .loading {
            LoadingView()
        } else if loadingState == .success {
            SuccessView()
        } else if loadingState == .failed {
            FailedView()
        }

    }
}

struct SwitchingViewStatesEnums_Previews: PreviewProvider {
    static var previews: some View {
        SwitchingViewStatesEnums()
    }
}
