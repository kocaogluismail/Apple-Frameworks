//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by İsmail Kocaoglu on 26.10.2023.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
   
                                
  
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: viewModel.colomns){
                    ForEach(MockData.frameworks) {framework in
                        NavigationLink(value:framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
                       
            .navigationTitle("Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FramworkDetailView(framework: framework)
                
            }

            }
        }
      
       
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}


