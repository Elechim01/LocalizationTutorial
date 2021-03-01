//
//  ContentView.swift
//  LocalizationTutorial
//
//  Created by Michele Manniello on 01/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("welcomeTitle")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["en","ja","pt","it"],id:\.self){ localeIdentifier in
            ContentView()
                .environment(\.locale,.init(identifier : localeIdentifier))
                .previewDisplayName(localeIdentifier)
        }
        
    }
}
