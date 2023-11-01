//
//  FramworkDetailView.swift
//  Apple-Frameworks
//
//  Created by İsmail Kocaoglu on 26.10.2023.
//

import SwiftUI

struct FramworkDetailView: View {
    var framework : Framework
    
    @State private var isShowingSafariView = false
    var body: some View {
        VStack{
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
                isShowingSafariView = true
            } label: {
               AFButton(title: "Learn more")
            }
        }
        .sheet(isPresented: $isShowingSafariView , content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FramworkDetailView(framework: MockData.sampleFramework)
}
